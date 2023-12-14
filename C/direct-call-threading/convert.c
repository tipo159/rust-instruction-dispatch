#include "bytecode.h"
#include "internal_instruction.h"

#pragma clang diagnostic ignored "-Wincompatible-function-pointer-types"
void convert(const bytecode_t *restrict instructions,
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
            internal_instructions[i].jmp = GET_OPERAND_JMP(instructions[i]);
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
