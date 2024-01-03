#pragma once

#if defined(__clang__)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wvisibility"
#endif
typedef struct internal_instruction {
  void (*handler)(struct internal_instruction *instruction, int *memory);
  unsigned char a;
  unsigned char b;
  union {
    unsigned char c;
    struct internal_instruction *jmp;
    int imm;
  };
} internal_instruction_t;
#if defined(__clang__)
#pragma clang diagnostic pop
#endif

extern void load(internal_instruction_t *restrict instruction,
                 int *restrict memory);

extern void add(internal_instruction_t *restrict instruction,
                int *restrict memory);

extern void jmpne(internal_instruction_t *restrict instruction,
                  int *restrict memory);

extern void print(internal_instruction_t *restrict instruction,
                  int *restrict memory);

extern void ret(internal_instruction_t *restrict instruction,
                int *restrict memory);

extern void vm_loop(internal_instruction_t *internal_program);
