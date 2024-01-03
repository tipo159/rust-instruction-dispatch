#pragma once

typedef enum { OP_LOAD, OP_ADD, OP_JMPNE, OP_PRINT, OP_RET } opcode_t;

typedef unsigned int bytecode_t;

// Bytecde: packed 32 bit
// --------------------------
//    A:B:C:OP = 8: 8:12: 4
//    A:Imm:OP =    8:20: 4
//  A:B:Jmp:OP = 8: 8:12: 4

#define MAKE_OPCODE(op) ((op) & 0xf)

#define MAKE_OPCODE_A_B_C(op, a, b, c)                                         \
  (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) +                \
   (((c) & 0xfff) << 4))

#define MAKE_OPCODE_IMM(op, a, imm)                                            \
  (((op) & 0xf) + (((a) & 0xff) << 24) + (((imm & 0xfffff) << 4)))

#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp)                                     \
  (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) +                \
   (((jmp) & 0xfff) << 4))

#define GET_OPCODE(instruction) ((instruction) & 0xf)

#define GET_OPERAND_A(instruction) (((instruction) >> 24) & 0xff)

#define GET_OPERAND_B(instruction) (((instruction) >> 16) & 0xff)

#define GET_OPERAND_C(instruction) (((instruction) >> 4) & 0xfff)

#define GET_OPERAND_IMM(instruction) (((instruction) >> 4) & 0xfffff)

#define GET_OPERAND_JMP(instruction) (((instruction) >> 4) & 0xfff)

extern void vm_loop(bytecode_t *pp);