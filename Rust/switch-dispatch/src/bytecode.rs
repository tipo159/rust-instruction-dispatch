/// Virtual machine bytecode

/// Type for Bytecode
pub type Bytecode = u32;

/// Type for Operand
pub type Operand = u32;

/// Opcode
#[derive(Debug, PartialEq, Copy, Clone)]
pub enum Opcode {
    /// Load an immidiate value into memory a
    LOAD = 0,
    /// Add memory b and memory c and store in memory a
    ADD = 1,
    /// If memory a is not equal to memory b, jump to operand jmp
    JMPNE = 2,
    /// Print memory a
    PRINT = 3,
    /// Return
    RET = 4,
}

impl Opcode {
    fn from_u32(value: u32) -> Opcode {
        match value {
            0 => Opcode::LOAD,
            1 => Opcode::ADD,
            2 => Opcode::JMPNE,
            3 => Opcode::PRINT,
            4 => Opcode::RET,
            _ => panic!("Unknown Opcode value: {value}"),
        }
    }
}

// Bytecode: packed 32 bit
// --------------------------
//    A:B:C:OP = 8: 8:12: 4
//    A:Imm:OP =    8:20: 4
//  A:B:Jmp:OP = 8: 8:12: 4

/// Make bytecode from Opcode op
///
/// # Arguments
///
/// * `op` - Opcode
///
/// # Return
///
/// Bytecode of Opcode op
#[inline(always)]
pub fn make_opcode(op: Opcode) -> Bytecode {
    op as Bytecode
}

/// Make bytecode from Opcode op and Operand a, b, c
///
/// # Arguments
///
/// * `op` - Opcode
/// * `a` - Operand(u8)
/// * `b` - Operand(u8)
/// * `c` - Operand(u12)
///
/// # Return
///
/// Bytecode of Opcode op and Operand a, b, c
#[inline(always)]
pub fn make_opcode_a_b_c(op: Opcode, a: u8, b: u8, c: u16) -> Bytecode {
    let a_u32 = a as u32;
    let (a_shl_24, _) = a_u32.overflowing_shl(24);
    let b_u32 = b as u32;
    let (b_shl_16, _) = b_u32.overflowing_shl(16);
    let c_u32 = c as u32 & 0xfff;
    let (c_shl_4, _) = c_u32.overflowing_shl(4);
    ((op as u32) + a_shl_24 + b_shl_16 + c_shl_4) as Bytecode
}

/// Make bytecode from Opcode op and Operand a, imm
///
/// # Arguments
///
/// * `op` - Opcode
/// * `a` - Operand(u8)
/// * `imm` - Operand(u20)
///
/// # Return
///
/// Bytecode of Opcode op and Operand a, imm
#[inline(always)]
pub fn make_opcode_a_imm(op: Opcode, a: u8, imm: u32) -> Bytecode {
    let a_u32 = a as u32;
    let (a_shl_24, _) = a_u32.overflowing_shl(24);
    let imm_u20 = imm & 0xfffff;
    let (imm_shl_4, _) = imm_u20.overflowing_shl(4);
    ((op as u32) + a_shl_24 + imm_shl_4) as Bytecode
}

/// Make bytecode from Opcode op and Operand a, b, jmp
///
/// # Arguments
///
/// * `op` - Opcode
/// * `a` - Operand(u8)
/// * `b` - Operand(u8)
/// * `jmp` - Operand(u12)
///
/// # Return
///
/// Bytecode of Opcode op and Operand a, b, jmp
#[inline(always)]
pub fn make_opcode_a_b_jmp(op: Opcode, a: u8, b: u8, jmp: u16) -> Bytecode {
    let a_u32 = a as u32;
    let (a_shl_24, _) = a_u32.overflowing_shl(24);
    let b_u32 = b as u32;
    let (b_shl_16, _) = b_u32.overflowing_shl(16);
    let jmp_u32 = jmp as u32 & 0xfff;
    let (jmp_shl_4, _) = jmp_u32.overflowing_shl(4);
    ((op as u32) + a_shl_24 + b_shl_16 + jmp_shl_4) as Bytecode
}

/// Get Opcode from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Opcode
#[inline(always)]
pub fn get_opcode(bytecode: Bytecode) -> Opcode {
    Opcode::from_u32(bytecode & 0xf)
}

/// Get Operand a from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Operand a
#[inline(always)]
pub fn get_operand_a(bytecode: Bytecode) -> Operand {
    ((bytecode >> 24) & 0xff) as Operand
}

/// Get Operand b from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Operand b
#[inline(always)]
pub fn get_operand_b(bytecode: Bytecode) -> Operand {
    ((bytecode >> 16) & 0xff) as Operand
}

/// Get Operand c from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Operand c
#[inline(always)]
pub fn get_operand_c(bytecode: Bytecode) -> Operand {
    ((bytecode >> 4) & 0xfff) as Operand
}

/// Get Operand imm from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Operand imm
#[inline(always)]
pub fn get_operand_imm(bytecode: Bytecode) -> Operand {
    (bytecode >> 4) & 0xfffff as Operand
}

/// Get Operand jmp from bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode
///
/// # Return
///
/// Operand jmp
#[inline(always)]
pub fn get_operand_jmp(bytecode: Bytecode) -> Operand {
    ((bytecode >> 4) & 0xfff) as Operand
}

/// Virtual Machine Loop
///
/// Virtual Machine program execution loop
///
/// # Arguments
///
/// * `program` - Program
/// 
/// # Safety
///
/// This function accesses the union field
pub unsafe fn vm_loop(program: &[Bytecode]) {
    let mut bytecode: &Bytecode;
    let mut memory = [0; 256];
    let mut pc: usize = 0;

    loop {
        bytecode = &(*program)[pc];
        match get_opcode(*bytecode) {
            Opcode::LOAD => {
                memory[get_operand_a(*bytecode) as usize] = get_operand_imm(*bytecode);
                #[cfg(debug_assertions)]
                {
                    println!(
                        "{pc}: memory[{}] = {}; memory[{}]:{}",
                        get_operand_a(*bytecode),
                        get_operand_imm(*bytecode),
                        get_operand_a(*bytecode),
                        memory[get_operand_a(*bytecode) as usize],
                    );
                }
            }
            Opcode::ADD => {
                #[cfg(debug_assertions)]
                {
                    print!(
                        "{pc}: memory[{}]:{} = memory[{}]:{} + memory[{}]:{}",
                        get_operand_a(*bytecode),
                        memory[get_operand_a(*bytecode) as usize],
                        get_operand_b(*bytecode),
                        memory[get_operand_b(*bytecode) as usize],
                        get_operand_c(*bytecode),
                        memory[get_operand_c(*bytecode) as usize],
                    );
                }
                memory[get_operand_a(*bytecode) as usize] = memory[get_operand_b(*bytecode) as usize]
                    + memory[get_operand_c(*bytecode) as usize];
                #[cfg(debug_assertions)]
                {
                    println!(
                        "; memory[{}]:{}",
                        get_operand_a(*bytecode),
                        memory[get_operand_a(*bytecode) as usize],
                    );
                }
            }
            Opcode::JMPNE => {
                #[cfg(debug_assertions)]
                {
                    print!(
                        "{pc}: if memory[{}]:{} != memory[{}]:{} pc = {}",
                        get_operand_a(*bytecode),
                        memory[get_operand_a(*bytecode) as usize],
                        get_operand_b(*bytecode),
                        memory[get_operand_b(*bytecode) as usize],
                        get_operand_jmp(*bytecode),
                    );
                }
                if memory[get_operand_a(*bytecode) as usize]
                    != memory[get_operand_b(*bytecode) as usize]
                {
                    pc = get_operand_jmp(*bytecode) as usize - 1;
                }
                #[cfg(debug_assertions)]
                {
                    println!("; pc: {}", pc + 1);
                }
            }
            Opcode::PRINT => {
                #[cfg(debug_assertions)]
                {
                    println!("{pc}: print memory[{}]", get_operand_a(*bytecode));
                }
                println!("{}", memory[get_operand_a(*bytecode) as usize]);
            }
            Opcode::RET => {
                #[cfg(debug_assertions)]
                {
                    println!("{pc}: ret");
                }
                break;
            }
        }
        pc += 1;
    }
}

/// Print bytecode
///
/// # Arguments
///
/// * `bytecode` - bytecode to print
pub fn print_bytecode(bytecode: Bytecode) {
    match get_opcode(bytecode) {
        Opcode::LOAD => println!(
            "LOAD: memory[{}] = {}",
            get_operand_a(bytecode),
            get_operand_imm(bytecode)
        ),
        Opcode::ADD => println!(
            "ADD: memory[{}] = memory[{}] + memory[{}]",
            get_operand_a(bytecode),
            get_operand_b(bytecode),
            get_operand_c(bytecode)
        ),
        Opcode::JMPNE => println!(
            "JMPNE: if memory[{}] != memory[{}] pc = {}",
            get_operand_a(bytecode),
            get_operand_b(bytecode),
            get_operand_jmp(bytecode)
        ),
        Opcode::PRINT => println!("PRINT: print memory[{}]", get_operand_a(bytecode)),
        Opcode::RET => println!("RET"),
    }
}

#[test]
fn test_get_opcode() {
    let bytecode = make_opcode(Opcode::RET);
    let op = get_opcode(bytecode);
    assert_eq!(Opcode::RET, op);
}

#[test]
fn test_get_opcode_and_get_operand_a_b_c_0() {
    let bytecode = make_opcode_a_b_c(Opcode::ADD, 0, 0, 0);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let b = get_operand_b(bytecode);
    let c = get_operand_c(bytecode);
    assert_eq!(Opcode::ADD, op);
    assert_eq!(0, a);
    assert_eq!(0, b);
    assert_eq!(0, c);
}

#[test]
fn test_get_opcode_and_get_operand_a_b_c_0xfff() {
    let bytecode = make_opcode_a_b_c(Opcode::ADD, 0xff, 0xff, 0xfff);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let b = get_operand_b(bytecode);
    let c = get_operand_c(bytecode);
    assert_eq!(Opcode::ADD, op);
    assert_eq!(0xff, a);
    assert_eq!(0xff, b);
    assert_eq!(0xfff, c);
}

#[test]
fn test_get_opcode_and_get_operand_a_imm_0() {
    let bytecode = make_opcode_a_imm(Opcode::LOAD, 0, 0);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let imm = get_operand_imm(bytecode);
    assert_eq!(Opcode::LOAD, op);
    assert_eq!(0, a);
    assert_eq!(0, imm);
}

#[test]
fn test_get_opcode_and_get_operand_a_imm_0xfffff() {
    let bytecode = make_opcode_a_imm(Opcode::LOAD, 0, 0xfffff);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let imm = get_operand_imm(bytecode);
    assert_eq!(Opcode::LOAD, op);
    assert_eq!(0, a);
    assert_eq!(0xfffff, imm);
}

#[test]
fn test_get_opcode_and_get_operand_a_b_jmp_0() {
    let bytecode = make_opcode_a_b_jmp(Opcode::JMPNE, 0, 0, 0);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let b = get_operand_b(bytecode);
    let jmp = get_operand_jmp(bytecode);
    assert_eq!(Opcode::JMPNE, op);
    assert_eq!(0, a);
    assert_eq!(0, b);
    assert_eq!(0, jmp);
}

#[test]
fn test_get_opcode_and_get_operand_a_b_jmp_0xfff() {
    let bytecode = make_opcode_a_b_jmp(Opcode::JMPNE, 0xff, 0xff, 0xfff);
    let op = get_opcode(bytecode);
    let a = get_operand_a(bytecode);
    let b = get_operand_b(bytecode);
    let jmp = get_operand_jmp(bytecode);
    assert_eq!(Opcode::JMPNE, op);
    assert_eq!(0xff, a);
    assert_eq!(0xff, b);
    assert_eq!(0xfff, jmp);
}
