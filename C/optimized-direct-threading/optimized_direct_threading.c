#include <stdio.h>
#include <time.h>

#ifdef DEBUG
#define WARMING_UP_ITERATIONS 0
#define NUM_OF_ITERATIONS 1
#else
#define WARMING_UP_ITERATIONS 10
#define NUM_OF_ITERATIONS 100
#endif

#define DISPATCH() goto *dispatch_sequence[++pc]

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

#define MAKE_OPCODE(op) ((op) & 0xf)

#define MAKE_OPCODE_A_B_C(op, a, b, c) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((c) & 0xfff) << 4))

#define MAKE_OPCODE_IMM(op, a, imm) (((op) & 0xf) + (((a) & 0xff) << 24) + (((imm & 0xfffff) << 4)))

#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((jmp) & 0xfff) << 4))

#define GET_OPCODE(instruction) ((instruction) & 0xf)

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
#ifdef DEBUG
        MAKE_OPCODE_IMM(OP_LOAD, 2, 10),
#else
        MAKE_OPCODE_IMM(OP_LOAD, 2, 0xfffff),
#endif
        // Loop
        MAKE_OPCODE_A_B_C(OP_ADD, 0, 0, 1),
        MAKE_OPCODE_A_B_JMP(OP_JMPNE, 0, 2, 3),

        // Finish
        MAKE_OPCODE_A_B_C(OP_PRINT, 0, 0, 0),
        MAKE_OPCODE(OP_RET)};
    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,
                              &&do_ret};
    void *dispatch_sequence[7];
    int pc;
    int memory[256] = {0};
    struct timespec ts_start, ts_end;

    for (int i = 0; i < 7; ++i)
    {
        dispatch_sequence[i] = dispatch_table[GET_OPCODE(program[i])];
    }
    long average = 0;
    for (int i = 0; i < WARMING_UP_ITERATIONS + NUM_OF_ITERATIONS; ++i)
    {
        if (i == WARMING_UP_ITERATIONS)
        {
            average = 0;
        }
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_start);
        pc = 0;
        goto *dispatch_sequence[pc];
    do_load:
        memory[GET_OPERAND_A(program[pc])] = GET_OPERAND_IMM(program[pc]);
#ifdef DEBUG
        printf("%d: load memory[%d] = %d\n", pc, GET_OPERAND_A(program[pc]), GET_OPERAND_IMM(program[pc]));
#endif
        DISPATCH();
    do_add:
        memory[GET_OPERAND_A(program[pc])] = memory[GET_OPERAND_B(program[pc])] + memory[GET_OPERAND_C(program[pc])];
#ifdef DEBUG
        printf("%d: add memory[%d](%d) = memory[%d] + memory[%d]\n", pc, GET_OPERAND_A(program[pc]),
            memory[GET_OPERAND_A(program[pc])], GET_OPERAND_B(program[pc]), GET_OPERAND_C(program[pc]));
#endif
        DISPATCH();
    do_jmpne:
#ifdef DEBUG
        printf("%d: jmpne if memory[%d](%d) != memory[%d](%d) then pc = %d\n", pc, GET_OPERAND_A(program[pc]),
            memory[GET_OPERAND_A(program[pc])], GET_OPERAND_B(program[pc]), memory[GET_OPERAND_B(program[pc])],
            GET_OPERAND_JMP(program[pc]));
#endif
        if (memory[GET_OPERAND_A(program[pc])] != memory[GET_OPERAND_B(program[pc])])
        {
            pc = GET_OPERAND_JMP(program[pc]) - 1;
        }
        DISPATCH();
    do_print:
        printf("%d\n", memory[GET_OPERAND_A(program[pc])]);
#ifdef DEBUG
        printf("%d: print memory[%d](%d)\n", pc, GET_OPERAND_A(program[pc]), memory[GET_OPERAND_A(program[pc])]);
#endif
        DISPATCH();
    do_ret:
#ifdef DEBUG
        printf("%d: ret\n", pc);
#endif
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_end);
        average += (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec;
        printf("Time elapsed: %10ld ns\n",
               (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec);
    }
    average /= NUM_OF_ITERATIONS;
    printf("Average of %d results: %10ld ns\n", NUM_OF_ITERATIONS, average);
}
