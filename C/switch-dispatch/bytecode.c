#include <stdio.h>
#include "bytecode.h"

void executeProgram(const bytecode_t *program, const int programSize)
{
    int programCounter = 0;
    int memory[256] = {0};

    while (programCounter < programSize)
    {
        opcode_t opcode = GET_OPCODE(program[programCounter]);

        switch (opcode)
        {
        case OP_LOAD:
        {
            int destination = GET_OPERAND_A(program[programCounter]);
            int value = GET_OPERAND_IMM(program[programCounter]);
            memory[destination] = value;
        }
        break;

        case OP_ADD:
        {
            int destination = GET_OPERAND_A(program[programCounter]);
            int operandB = memory[GET_OPERAND_B(program[programCounter])];
            int operandC = memory[GET_OPERAND_C(program[programCounter])];
            memory[destination] = operandB + operandC;
        }
        break;

        case OP_JMPNE:
        {
            int operandA = memory[GET_OPERAND_A(program[programCounter])];
            int operandB = memory[GET_OPERAND_B(program[programCounter])];
            int jumpTarget = GET_OPERAND_JMP(program[programCounter]);

            if (operandA != operandB)
            {
                programCounter = jumpTarget - 1;
            }
        }
        break;

        case OP_PRINT:
        {
            int operandA = memory[GET_OPERAND_A(program[programCounter])];
            printf("%d\n", operandA);
        }
        break;

        case OP_RET:
            // Do nothing
            break;
        }

        programCounter += 1;
    }
}