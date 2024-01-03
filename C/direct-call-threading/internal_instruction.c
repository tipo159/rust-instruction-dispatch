#include <stdio.h>

#include "bytecode.h"
#include "internal_instruction.h"

void load(const internal_instruction_t *restrict instruction, int *program_pointer,
          int *restrict memory) {
#if defined(DEBUG)
  printf("%d: load memory[%d] = %d\n", *program_pointer, instruction[*program_pointer].a,
         instruction[*program_pointer].imm);
#endif
  memory[instruction[*program_pointer].a] = instruction[*program_pointer].imm;
  instruction++;
  (*program_pointer)++;
}

void add(const internal_instruction_t *restrict instruction, int *program_pointer,
         int *restrict memory) {
#if defined(DEBUG)
  printf("%d: add memory[%d](%d) = memory[%d] + memory[%d]\n", *program_pointer,
         instruction[*program_pointer].a, memory[instruction[*program_pointer].a], instruction[*program_pointer].b,
         instruction[*program_pointer].c);
#endif
  memory[instruction[*program_pointer].a] =
      memory[instruction[*program_pointer].b] + memory[instruction[*program_pointer].c];
  instruction++;
  (*program_pointer)++;
}

void jmpne(const internal_instruction_t *restrict instruction, int *program_pointer,
           int *restrict memory) {
#if defined(DEBUG)
  printf("%d: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %d\n", *program_pointer,
         instruction[*program_pointer].a, memory[instruction[*program_pointer].a], instruction[*program_pointer].b,
         memory[instruction[*program_pointer].b], instruction[*program_pointer].jmp);
#endif
  if (memory[instruction[*program_pointer].a] != memory[instruction[*program_pointer].b]) {
    *program_pointer = instruction[*program_pointer].jmp;
  } else {
    (*program_pointer)++;
  }
}

void print(const internal_instruction_t *restrict instruction, int *program_pointer,
           int *restrict memory) {
#if defined(DEBUG)
  printf("%d: print memory[%d](%d)\n", *program_pointer, instruction[*program_pointer].a,
         memory[instruction[*program_pointer].a]);
#endif
  printf("%d\n", memory[instruction[*program_pointer].a]);
  instruction++;
  (*program_pointer)++;
}

void ret(const internal_instruction_t *restrict instruction, int *program_pointer,
         int *restrict memory) {
#if defined(DEBUG)
  printf("%d: ret\n", *program_pointer);
#endif
  (*program_pointer)++;
}

#if defined(__clang__)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#endif
void vm_loop(const internal_instruction_t *internal_program, int size) {
  int program_pointer = 0;
  int memory[256] = {0};

  while (program_pointer < size) {
    internal_program[program_pointer].handler(internal_program, &program_pointer, memory);
  }
}
