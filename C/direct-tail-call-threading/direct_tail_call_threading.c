#include <stdio.h>
#include <time.h>

#define WARMING_UP_ITERATIONS 10
#define NUM_OF_ITERATIONS 100

#define NEXT_INSTRUCTION                                                   \
    do                                                                     \
    {                                                                      \
        __attribute__((musttail)) return instruction->handler(instruction, \
                                                              memory);     \
    } while (0)

typedef enum
{
    OP_LOAD,
    OP_ADD,
    OP_JMPNE,
    OP_PRINT,
    OP_RET
} opcode_t;

typedef unsigned int bytecode_t;

// Bytecode: packed 32 bit
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

typedef struct internal_instruction
{
    void (*handler)(struct internal_instruction *restrict, int *restrict);
    unsigned char a;
    unsigned char b;
    union
    {
        unsigned char c;
        struct internal_instruction *jmp;
        int imm;
    };
} internal_instruction_t;

static void load(internal_instruction_t *restrict instruction,
                 int *restrict memory)
{
    memory[instruction->a] = instruction->imm;
    instruction++;
    NEXT_INSTRUCTION;
}

static void add(internal_instruction_t *restrict instruction,
                int *restrict memory)
{
    memory[instruction->a] = memory[instruction->b] + memory[instruction->c];
    instruction++;
    NEXT_INSTRUCTION;
}

static void jmpne(internal_instruction_t *restrict instruction,
                  int *restrict memory)
{
    if (memory[instruction->a] != memory[instruction->b])
    {
        instruction = instruction->jmp;
    }
    else
    {
        instruction++;
    }
    NEXT_INSTRUCTION;
}

static void print(internal_instruction_t *restrict instruction,
                  int *restrict memory)
{
    printf("%d\n", memory[instruction->a]);
    instruction++;
    NEXT_INSTRUCTION;
}

static void ret(internal_instruction_t *restrict instruction,
                int *restrict memory) {}

static void convert(const bytecode_t *restrict instructions,
                    internal_instruction_t *internal_instructions)
{
    int i = 0;
    while (1)
    {
        switch (GET_OPCODE(instructions[i]))
        {
        case OP_LOAD:
            internal_instructions[i].handler = load;
            internal_instructions[i].a = GET_OPERAND_A(instructions[i]);
            internal_instructions[i].imm = GET_OPERAND_IMM(instructions[i]);
            break;
        case OP_ADD:
            internal_instructions[i].handler = add;
            internal_instructions[i].a = GET_OPERAND_A(instructions[i]);
            internal_instructions[i].b = GET_OPERAND_B(instructions[i]);
            internal_instructions[i].c = GET_OPERAND_C(instructions[i]);
            break;
        case OP_JMPNE:
            internal_instructions[i].handler = jmpne;
            internal_instructions[i].a = GET_OPERAND_A(instructions[i]);
            internal_instructions[i].b = GET_OPERAND_B(instructions[i]);
            internal_instructions[i].jmp = &internal_instructions[GET_OPERAND_JMP(instructions[i])];
            break;
        case OP_PRINT:
            internal_instructions[i].handler = print;
            internal_instructions[i].a = GET_OPERAND_A(instructions[i]);
            break;
        case OP_RET:
            internal_instructions[i].handler = ret;
            return;
        }
        ++i;
    }
}

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
    internal_instruction_t internal_program[7];
    int memory[256] = {0};
    struct timespec ts_start, ts_end;

    convert(program, internal_program);
    long average = 0;
    for (int i = 0; i < WARMING_UP_ITERATIONS + NUM_OF_ITERATIONS; ++i)
    {
        if (i == WARMING_UP_ITERATIONS)
        {
            average = 0;
        }
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_start);
        internal_program[0].handler(internal_program, memory);
        clock_gettime(CLOCK_MONOTONIC_RAW, &ts_end);
        average += (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec;
        printf("Time elapsed: %10ld ns\n",
               (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec - ts_start.tv_nsec);
    }
    average /= NUM_OF_ITERATIONS;
    printf("Average of %d results: %10ld ns\n", NUM_OF_ITERATIONS, average);
}
