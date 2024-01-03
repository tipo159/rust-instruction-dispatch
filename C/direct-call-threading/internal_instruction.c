#include <stdio.h>

#include "bytecode.h"
#include "internal_instruction.h"

void load(const internal_instruction_t *restrict instruction, int *pc,
          int *restrict memory) {
#if defined(DEBUG)
  printf("%d: load memory[%d] = %d\n", *pc, instruction[*pc].a,
         instruction[*pc].imm);
#endif
  memory[instruction[*pc].a] = instruction[*pc].imm;
  instruction++;
  (*pc)++;
}

void add(const internal_instruction_t *restrict instruction, int *pc,
         int *restrict memory) {
#if defined(DEBUG)
  printf("%d: add memory[%d](%d) = memory[%d] + memory[%d]\n", *pc,
         instruction[*pc].a, memory[instruction[*pc].a], instruction[*pc].b,
         instruction[*pc].c);
#endif
  memory[instruction[*pc].a] =
      memory[instruction[*pc].b] + memory[instruction[*pc].c];
  instruction++;
  (*pc)++;
}

void jmpne(const internal_instruction_t *restrict instruction, int *pc,
           int *restrict memory) {
#if defined(DEBUG)
  printf("%d: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %d\n", *pc,
         instruction[*pc].a, memory[instruction[*pc].a], instruction[*pc].b,
         memory[instruction[*pc].b], instruction[*pc].jmp);
#endif
  if (memory[instruction[*pc].a] != memory[instruction[*pc].b]) {
    *pc = instruction[*pc].jmp;
  } else {
    (*pc)++;
  }
}

void print(const internal_instruction_t *restrict instruction, int *pc,
           int *restrict memory) {
#if defined(DEBUG)
  printf("%d: print memory[%d](%d)\n", *pc, instruction[*pc].a,
         memory[instruction[*pc].a]);
#endif
  printf("%d\n", memory[instruction[*pc].a]);
  instruction++;
  (*pc)++;
}

void ret(const internal_instruction_t *restrict instruction, int *pc,
         int *restrict memory) {
#if defined(DEBUG)
  printf("%d: ret\n", *pc);
#endif
  (*pc)++;
}

#if defined(__clang__)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#endif
void vm_loop(const internal_instruction_t *internal_program, int size) {
  int pc = 0;
  int memory[256] = {0};

  while (pc < size) {
    internal_program[pc].handler(internal_program, &pc, memory);
  }
}
