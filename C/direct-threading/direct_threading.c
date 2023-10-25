#include <stdio.h>
#include <time.h>

#ifdef DEBUG
#define WARMING_UP_ITERATIONS 0
#define NUM_OF_ITERATIONS 1
#else
#define WARMING_UP_ITERATIONS 10
#define NUM_OF_ITERATIONS 100
#endif

#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++pp))]

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
    bytecode_t *pp = &program[0];
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
        goto *dispatch_table[GET_OPCODE(*pp)];
    do_load:
#ifdef DEBUG
        printf("%ld: load memory[%d] = %d\n", pp - &program[0], GET_OPERAND_A(*pp), GET_OPERAND_IMM(*pp));
#endif
        memory[GET_OPERAND_A(*pp)] = GET_OPERAND_IMM(*pp);
        DISPATCH();
    do_add:
#ifdef DEBUG
        printf("%ld: add memory[%d](%d) = memory[%d] + memory[%d]\n", pp - &program[0], GET_OPERAND_A(*pp),
            memory[GET_OPERAND_A(*pp)], GET_OPERAND_B(*pp), GET_OPERAND_C(*pp));
#endif
        memory[GET_OPERAND_A(*pp)] = memory[GET_OPERAND_B(*pp)] + memory[GET_OPERAND_C(*pp)];
        DISPATCH();
    do_jmpne:
#ifdef DEBUG
        printf("%ld: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %d\n", pp - &program[0], GET_OPERAND_A(*pp),
            memory[GET_OPERAND_A(*pp)], GET_OPERAND_B(*pp), memory[GET_OPERAND_B(*pp)], GET_OPERAND_JMP(*pp));
#endif
        if (memory[GET_OPERAND_A(*pp)] != memory[GET_OPERAND_B(*pp)])
        {
            pp = &program[GET_OPERAND_JMP(*pp) - 1];
        }
        DISPATCH();
    do_print:
#ifdef DEBUG
        printf("%ld: print memory[%d](%d)\n", pp - &program[0], GET_OPERAND_A(*pp), memory[GET_OPERAND_A(*pp)]);
#endif
        printf("%d\n", memory[GET_OPERAND_A(*pp)]);
        DISPATCH();
    do_ret:
#ifdef DEBUG
        printf("%ld: ret\n", pp - &program[0]);
#endif
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_end);
        average += (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec;
        printf("Time elapsed: %10ld ns\n",
               (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec);
    }
    average /= NUM_OF_ITERATIONS;
    printf("Average of %d results: %10ld ns\n", NUM_OF_ITERATIONS, average);
}
