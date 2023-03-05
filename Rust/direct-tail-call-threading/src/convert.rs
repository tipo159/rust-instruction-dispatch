use std::ptr;

#[cfg(test)]
use super::bytecode::{make_opcode, make_opcode_a_b_c, make_opcode_a_b_jmp, make_opcode_a_imm};

use super::bytecode::{
    get_opcode, get_operand_a, get_operand_b, get_operand_c, get_operand_imm, get_operand_jmp,
    Bytecode, Opcode,
};
use super::internal_instruction::{add, jmpne, load, print, ret, ExtraParam, InternalInstruction};

type I = InternalInstruction;
type P = ExtraParam;

/// Convert an Bytecode sequence to an InternalInstruction sequence
///
/// # Arguments
///
/// * `program` - Reference to an array of Bytecode
/// * `internal_program` - Reference to an array of InternalInstruction
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn convert(
    program: &[Bytecode],
    internal_program: &mut Vec<InternalInstruction>,
) {
    let mut i: usize = 0;
    loop {
        match get_opcode(program[i]) {
            Opcode::LOAD => {
                internal_program.push(I {
                    handler: load,
                    a: get_operand_a(program[i]) as u8,
                    b: 0,
                    param: P {
                        imm: get_operand_imm(program[i]),
                    },
                });
            }
            Opcode::ADD => {
                internal_program.push(I {
                    handler: add,
                    a: get_operand_a(program[i]) as u8,
                    b: get_operand_b(program[i]) as u8,
                    param: P {
                        c: get_operand_c(program[i]) as u16,
                    },
                });
            }
            Opcode::JMPNE => {
                internal_program.push(I {
                    handler: jmpne,
                    a: get_operand_a(program[i]) as u8,
                    b: get_operand_b(program[i]) as u8,
                    param: P {
                        jmp: ptr::addr_of!(
                            internal_program[get_operand_jmp(program[i]) as usize]
                        ),
                    },
                });
            }
            Opcode::PRINT => {
                internal_program.push(I {
                    handler: print,
                    a: get_operand_a(program[i]) as u8,
                    b: 0,
                    param: P { c: 0 },
                });
            }
            Opcode::RET => {
                internal_program.push(I {
                    handler: ret,
                    a: 0,
                    b: 0,
                    param: P { c: 0 },
                });
                break;
            }
        }
        i += 1;
    }
}

#[test]
fn test_convert_load() {
    let program = [
        make_opcode_a_imm(Opcode::LOAD, 1, 2),
        make_opcode(Opcode::RET),
    ];
    let mut internal_program: Vec<InternalInstruction> = Vec::new();

    unsafe {
        convert(&program, &mut internal_program);
    }
    assert_eq!(program.len(), internal_program.len());
    assert!(ptr::eq(
        load as *const (),
        internal_program[0].handler as *const ()
    ));
    assert_eq!(1, internal_program[0].a);
    unsafe {
        assert_eq!(2, internal_program[0].param.c);
    }
}

#[test]
fn test_convert_add() {
    let program = [
        make_opcode_a_b_c(Opcode::ADD, 1, 2, 3),
        make_opcode(Opcode::RET),
    ];
    let mut internal_program: Vec<InternalInstruction> = Vec::new();

    unsafe {
        convert(&program, &mut internal_program);
    }
    assert_eq!(program.len(), internal_program.len());
    assert!(ptr::eq(
        add as *const (),
        internal_program[0].handler as *const ()
    ));
    assert_eq!(1, internal_program[0].a);
    assert_eq!(2, internal_program[0].b);
    unsafe {
        assert_eq!(3, internal_program[0].param.c);
    }
}

#[test]
fn test_convert_jmpne() {
    let program = [
        make_opcode_a_imm(Opcode::LOAD, 1, 2),
        make_opcode_a_b_jmp(Opcode::JMPNE, 1, 2, 0),
        make_opcode(Opcode::RET),
    ];
    let mut internal_program: Vec<InternalInstruction> = Vec::new();

    unsafe {
        convert(&program, &mut internal_program);
    }
    assert_eq!(program.len(), internal_program.len());
    assert!(ptr::eq(
        jmpne as *const (),
        internal_program[1].handler as *const ()
    ));
    assert_eq!(1, internal_program[1].a);
    assert_eq!(2, internal_program[1].b);
    unsafe {
        assert!(ptr::eq(
            ptr::addr_of!(internal_program[0]),
            internal_program[1].param.jmp as *const _,
        ));
    }
}

#[test]
fn test_convert_print() {
    let program = [
        make_opcode_a_b_c(Opcode::PRINT, 1, 0, 0),
        make_opcode(Opcode::RET),
    ];
    let mut internal_program: Vec<InternalInstruction> = Vec::new();

    unsafe {
        convert(&program, &mut internal_program);
    }
    assert_eq!(program.len(), internal_program.len());
    assert!(ptr::eq(
        print as *const (),
        internal_program[0].handler as *const ()
    ));
    assert_eq!(1, internal_program[0].a);
}

#[test]
fn test_convert_ret() {
    let program = [make_opcode(Opcode::RET)];
    let mut internal_program: Vec<InternalInstruction> = Vec::new();

    unsafe {
        convert(&program, &mut internal_program);
    }
    assert_eq!(program.len(), internal_program.len());
    assert!(ptr::eq(
        ret as *const (),
        internal_program[0].handler as *const ()
    ));
}
