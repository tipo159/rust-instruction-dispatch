#pragma once

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wvisibility"
typedef struct
{
    void (*handler)(const struct internal_instruction *instruction, int *pc, int *memory);
    unsigned char a;
    unsigned char b;
    union
    {
        unsigned char c;
        int jmp;
        int imm;
    };
} internal_instruction_t;
#pragma clang diagnostic pop

extern void load(const internal_instruction_t *instruction,
                 int *pc,
                 int *memory);

extern void add(const internal_instruction_t *instruction,
                int *pc,
                int *memory);

extern void jmpne(const internal_instruction_t *instruction,
                  int *pc,
                  int *memory);

extern void print(const internal_instruction_t *instruction,
                  int *pc,
                  int *memory);

extern void ret(const internal_instruction_t *instruction,
                int *pc,
                int *memory);

extern void vm_loop(const internal_instruction_t *internal_program, int size);
