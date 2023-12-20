#include <stdio.h>

#include "bytecode.h"

#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++programPointer))]

void vm_loop(bytecode_t *program)
{
    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,
                              &&do_ret};
    int memory[256] = {0};
    bytecode_t *programPointer = program;

    goto *dispatch_table[GET_OPCODE(*programPointer)];
do_load:
#ifdef DEBUG
    printf("%ld: load memory[%d] = %d\n", programPointer - &program[0], GET_OPERAND_A(*programPointer), GET_OPERAND_IMM(*programPointer));
#endif
    memory[GET_OPERAND_A(*programPointer)] = GET_OPERAND_IMM(*programPointer);
    DISPATCH();
do_add:
#ifdef DEBUG
    printf("%ld: add memory[%d](%d) = memory[%d] + memory[%d]\n", programPointer - &program[0], GET_OPERAND_A(*programPointer),
           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), GET_OPERAND_C(*programPointer));
#endif
    memory[GET_OPERAND_A(*programPointer)] = memory[GET_OPERAND_B(*programPointer)] + memory[GET_OPERAND_C(*programPointer)];
    DISPATCH();
do_jmpne:
#ifdef DEBUG
    printf("%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\n", programPointer - &program[0], GET_OPERAND_A(*programPointer),
           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), memory[GET_OPERAND_B(*programPointer)], GET_OPERAND_JMP(*programPointer));
#endif
    if (memory[GET_OPERAND_A(*programPointer)] != memory[GET_OPERAND_B(*programPointer)])
    {
        programPointer = &program[GET_OPERAND_JMP(*programPointer) - 1];
    }
    DISPATCH();
do_print:
#ifdef DEBUG
    printf("%ld: print memory[%d](%d)\n", programPointer - &program[0], GET_OPERAND_A(*programPointer), memory[GET_OPERAND_A(*programPointer)]);
#endif
    printf("%d\n", memory[GET_OPERAND_A(*programPointer)]);
    DISPATCH();
do_ret:
#ifdef DEBUG
    printf("%ld: ret\n", programPointer - &program[0]);
#endif
    ;
}
