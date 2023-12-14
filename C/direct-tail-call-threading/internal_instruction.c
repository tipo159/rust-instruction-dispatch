#include <stdio.h>

#include "bytecode.h"
#include "internal_instruction.h"

#define NEXT_INSTRUCTION                                                   \
    do                                                                     \
    {                                                                      \
        __attribute__((musttail)) return instruction->handler(instruction, \
                                                              memory);     \
    } while (0)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat"

void load(internal_instruction_t *restrict instruction,
                 int *restrict memory)
{
#ifdef DEBUG
    printf("%x: load memory[%d] = %d\n", instruction, instruction->a, instruction->imm);
#endif
    memory[instruction->a] = instruction->imm;
    instruction++;
    NEXT_INSTRUCTION;
}

void add(internal_instruction_t *restrict instruction,
                int *restrict memory)
{
#ifdef DEBUG
    printf("%x: add memory[%d](%d) = memory[%d] + memory[%d]\n", instruction, instruction->a,
           memory[instruction->a], instruction->b, instruction->c);
#endif
    memory[instruction->a] = memory[instruction->b] + memory[instruction->c];
    instruction++;
    NEXT_INSTRUCTION;
}

void jmpne(internal_instruction_t *restrict instruction,
                  int *restrict memory)
{
#ifdef DEBUG
    printf("%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\n", instruction, instruction->a,
           memory[instruction->a], instruction->b, memory[instruction->b], instruction->jmp);
#endif
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

void print(internal_instruction_t *restrict instruction,
                  int *restrict memory)
{
#ifdef DEBUG
    printf("%x: print memory[%d](%d)\n", instruction, instruction->a, memory[instruction->a]);
#endif
    printf("%d\n", memory[instruction->a]);
    instruction++;
    NEXT_INSTRUCTION;
}

void ret(internal_instruction_t *restrict instruction,
                int *restrict memory)
{
#ifdef DEBUG
    printf("%x: ret\n", instruction);
#endif
}

#pragma clang diagnostic pop

void vm_loop(internal_instruction_t *internal_program)
{
    int memory[256] = {0};

    internal_program[0].handler(internal_program, memory);
}
