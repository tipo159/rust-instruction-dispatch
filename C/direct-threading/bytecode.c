#include <stdio.h>

#include "bytecode.h"

#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++program_pointer))]

void vm_loop(bytecode_t *program)
{
    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,
                              &&do_ret};
    int memory[256] = {0};
    bytecode_t *program_pointer = program;

    goto *dispatch_table[GET_OPCODE(*program_pointer)];
do_load:
#if defined(DEBUG)
    printf("%ld: load memory[%d] = %d\n", program_pointer - &program[0], GET_OPERAND_A(*program_pointer), GET_OPERAND_IMM(*program_pointer));
#endif
    memory[GET_OPERAND_A(*program_pointer)] = GET_OPERAND_IMM(*program_pointer);
    DISPATCH();
do_add:
#if defined(DEBUG)
    printf("%ld: add memory[%d](%d) = memory[%d] + memory[%d]\n", program_pointer - &program[0], GET_OPERAND_A(*program_pointer),
           memory[GET_OPERAND_A(*program_pointer)], GET_OPERAND_B(*program_pointer), GET_OPERAND_C(*program_pointer));
#endif
    memory[GET_OPERAND_A(*program_pointer)] = memory[GET_OPERAND_B(*program_pointer)] + memory[GET_OPERAND_C(*program_pointer)];
    DISPATCH();
do_jmpne:
#if defined(DEBUG)
    printf("%ld: jmpne if memory[%d](%d) != memory[%d](%d) then program_pointer = %d\n", program_pointer - &program[0], GET_OPERAND_A(*program_pointer),
           memory[GET_OPERAND_A(*program_pointer)], GET_OPERAND_B(*program_pointer), memory[GET_OPERAND_B(*program_pointer)], GET_OPERAND_JMP(*program_pointer));
#endif
    if (memory[GET_OPERAND_A(*program_pointer)] != memory[GET_OPERAND_B(*program_pointer)])
    {
        program_pointer = &program[GET_OPERAND_JMP(*program_pointer) - 1];
    }
    DISPATCH();
do_print:
#if defined(DEBUG)
    printf("%ld: print memory[%d](%d)\n", program_pointer - &program[0], GET_OPERAND_A(*program_pointer), memory[GET_OPERAND_A(*program_pointer)]);
#endif
    printf("%d\n", memory[GET_OPERAND_A(*program_pointer)]);
    DISPATCH();
do_ret:
#if defined(DEBUG)
    printf("%ld: ret\n", program_pointer - &program[0]);
#endif
    ;
}
