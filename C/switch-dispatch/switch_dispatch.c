#include <stdio.h>
#include <time.h>

#define WARMING_UP_ITERATIONS 10
#define NUM_OF_ITERATIONS 100

#define DISPATCH() goto *dispatch_table[program[pc++].opcode]

typedef enum
{
    OP_LOAD,
    OP_ADD,
    OP_JMPNE,
    OP_PRINT,
    OP_RET
} opcode_t;

typedef unsigned int bytecode_t;

// Bytecde: packed 32 bit
// --------------------------
//    A:B:C:OP = 8: 8:12: 4
//    A:Imm:OP =    8:20: 4
//  A:B:Jmp:OP = 8: 8:12: 4

#define MAKE_OPCODE(op) ((op)&0xf)

#define MAKE_OPCODE_A_B_C(op, a, b, c) (((op)&0xf) + (((a)&0xff) << 24) + (((b)&0xff) << 16) + (((c)&0xfff) << 4))

#define MAKE_OPCODE_IMM(op, a, imm) (((op)&0xf) + (((a)&0xff) << 24) + (((imm & 0xfffff) << 4)))

#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp) (((op)&0xf) + (((a)&0xff) << 24) + (((b)&0xff) << 16) + (((jmp)&0xfff) << 4))

#define GET_OPCODE(instruction) ((instruction)&0xf)

#define GET_OPERAND_A(instruction) (((instruction) >> 24) & 0xff)

#define GET_OPERAND_B(instruction) (((instruction) >> 16) & 0xff)

#define GET_OPERAND_C(instruction) (((instruction) >> 4) & 0xfff)

#define GET_OPERAND_IMM(instruction) (((instruction) >> 4) & 0xfffff)

#define GET_OPERAND_JMP(instruction) (((instruction) >> 4) & 0xfff)

int main()
{
    bytecode_t program[] = {
        // Init loop
        MAKE_OPCODE_IMM(OP_LOAD, 0, 0),
        MAKE_OPCODE_IMM(OP_LOAD, 1, 1),
        MAKE_OPCODE_IMM(OP_LOAD, 2, 0xfffff),
        // Loop
        MAKE_OPCODE_A_B_C(OP_ADD, 0, 0, 1),
        MAKE_OPCODE_A_B_JMP(OP_JMPNE, 0, 2, 3),

        // Finish
        MAKE_OPCODE_A_B_C(OP_PRINT, 0, 0, 0),
        MAKE_OPCODE(OP_RET)};
    int pc;
    int memory[256] = {0};
    struct timespec ts_start, ts_end;

    long average = 0;
    for (int i = 0; i < WARMING_UP_ITERATIONS + NUM_OF_ITERATIONS; ++i)
    {
        if (i == WARMING_UP_ITERATIONS)
        {
            average = 0;
        }
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_start);
        pc = 0;
        while (pc < (sizeof(program) / sizeof(bytecode_t)))
        {
            switch (GET_OPCODE(program[pc]))
            {
            case OP_LOAD:
                memory[GET_OPERAND_A(program[pc])] = GET_OPERAND_IMM(program[pc]);
                break;
            case OP_ADD:
                memory[GET_OPERAND_A(program[pc])] = memory[GET_OPERAND_B(program[pc])] + memory[GET_OPERAND_C(program[pc])];
                break;
            case OP_JMPNE:
                if (memory[GET_OPERAND_A(program[pc])] != memory[GET_OPERAND_B(program[pc])])
                {
                    pc = GET_OPERAND_JMP(program[pc]) - 1;
                }
                break;
            case OP_PRINT:
                printf("%d\n", memory[GET_OPERAND_A(program[pc])]);
                break;
            case OP_RET:
                break;
            }
            pc += 1;
        }
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_end);
        average += (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec;
        printf("Time elapsed: %10ld ns\n",
               (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec);
    }
    average /= NUM_OF_ITERATIONS;
    printf("Average of %d results: %10ld ns\n", NUM_OF_ITERATIONS, average);
}
