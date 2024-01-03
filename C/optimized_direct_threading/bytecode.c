#include <stdio.h>

#include "bytecode.h"

#define DISPATCH() goto *dispatch_sequence[++program_counter]

void vm_loop(bytecode_t *program)
{
    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print, &&do_ret};
    int memory[256] = {0};
    int program_counter = 0;
    void *dispatch_sequence[256];

    for (int i = 0; ; i++) {
        dispatch_sequence[i] = dispatch_table[GET_OPCODE(program[i])];
        if (GET_OPCODE(program[i - 1]) == OP_RET) {
            break;
        }
    }

    goto *dispatch_sequence[program_counter];

do_load:
#if defined(DEBUG)
    printf("%d: load memory[%d] = %d\n", program_counter, GET_OPERAND_A(program[program_counter]),
           GET_OPERAND_IMM(program[program_counter]));
#endif
    memory[GET_OPERAND_A(program[program_counter])] = GET_OPERAND_IMM(program[program_counter]);
    DISPATCH();

do_add:
#if defined(DEBUG)
    printf("%d: add memory[%d](%d) = memory[%d] + memory[%d]\n", program_counter,
           GET_OPERAND_A(program[program_counter]), memory[GET_OPERAND_A(program[program_counter])],
           GET_OPERAND_B(program[program_counter]), GET_OPERAND_C(program[program_counter]));
#endif
    memory[GET_OPERAND_A(program[program_counter])] = memory[GET_OPERAND_B(program[program_counter])] +
        memory[GET_OPERAND_C(program[program_counter])];
    DISPATCH();

do_jmpne:
#if defined(DEBUG)
    printf("%d: jmpne if memory[%d](%d) != memory[%d](%d) then program_counter = %d\n", program_counter,
           GET_OPERAND_A(program[program_counter]), memory[GET_OPERAND_A(program[program_counter])],
           GET_OPERAND_B(program[program_counter]), memory[GET_OPERAND_B(program[program_counter])],
           GET_OPERAND_JMP(program[program_counter]));
#endif
    if (memory[GET_OPERAND_A(program[program_counter])] != memory[GET_OPERAND_B(program[program_counter])])
    {
        program_counter = GET_OPERAND_JMP(program[program_counter]) - 1;
    }
    DISPATCH();

do_print:
#if defined(DEBUG)
    printf("%d: print memory[%d](%d)\n", program_counter, GET_OPERAND_A(program[program_counter]),
           memory[GET_OPERAND_A(program[program_counter])]);
#endif
    printf("%d\n", memory[GET_OPERAND_A(program[program_counter])]);
    DISPATCH();

do_ret:
#if defined(DEBUG)
    printf("%d: ret\n", program_counter);
#endif
    ;
}
