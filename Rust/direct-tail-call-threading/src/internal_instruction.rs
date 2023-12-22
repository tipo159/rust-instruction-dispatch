use std::ptr;

/// Access array element with get_unchecked if "unchecked_memory" feature is defined
#[cfg(feature = "unchecked_memory")]
macro_rules! get_mem {
    ($mem:ident[$r:expr]) => {
        $mem.get_unchecked($r as usize)
    };
    (mut $mem:ident[$r:expr]) => {
        $mem.get_unchecked_mut($r as usize)
    };
}

#[cfg(not(feature = "unchecked_memory"))]
macro_rules! get_mem {
    ($mem:ident[$r:expr]) => {
        &$mem[$r as usize]
    };
    (mut $mem:ident[$r:expr]) => {
        &mut $mem[$r as usize]
    };
}

/// Union for optional operands
#[derive(Clone, Copy)]
pub union ExtraParam {
    pub c: u16,
    pub jmp: *const InternalInstruction,
    pub imm: u32,
}

/// Type for internal instruction handler
type HandlerType = unsafe fn(*const InternalInstruction, &mut [u32]);

/// Struct for Internal Instruction
#[derive(Clone, Copy)]
pub struct InternalInstruction {
    pub handler: HandlerType,
    pub a: u8,
    pub b: u8,
    pub param: ExtraParam,
}

unsafe impl Send for InternalInstruction {}
unsafe impl Sync for InternalInstruction {}

/// Call next instruction implementation function
///
/// # Arguments
///
/// * `instruction` - next instruction to be executed
/// * `memory` - memory
#[inline(always)]
unsafe fn next_instruction(instruction: *const InternalInstruction, memory: &mut [u32]) {
    ((*instruction).handler)(instruction, memory)
}

/// Function to execute load
///
/// # Arguments
///
/// * `instruction` - internal instruction
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn load(instruction: *const InternalInstruction, memory: &mut [u32]) {
    *get_mem!(mut memory[(*instruction).a]) = (*instruction).param.imm;
    #[cfg(debug_assertions)]
    {
        println!(
            "{instruction:p}: memory[{}] = {}; memory[{}]:{}",
            (*instruction).a,
            (*instruction).param.imm,
            (*instruction).a,
            memory[(*instruction).a as usize]
        );
    }
    next_instruction(instruction.offset(1), memory)
}

/// Function to execute add
///
/// # Arguments
///
/// * `instruction` - internal instruction
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn add(instruction: *const InternalInstruction, memory: &mut [u32]) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{instruction:p}: memory[{}]:{} = memory[{}]:{} + memory[{}]:{}",
            (*instruction).a,
            memory[(*instruction).a as usize],
            (*instruction).b,
            memory[(*instruction).b as usize],
            (*instruction).param.c,
            memory[(*instruction).param.c as usize],
        );
    }
    *get_mem!(mut memory[(*instruction).a]) =
        *get_mem!(memory[(*instruction).b]) + *get_mem!(memory[(*instruction).param.c]);
    #[cfg(debug_assertions)]
    {
        println!(
            "; memory[{}]:{}",
            (*instruction).a,
            memory[(*instruction).a as usize],
        );
    }
    next_instruction(instruction.offset(1), memory)
}

/// Function to execute jmpne
///
/// # Arguments
///
/// * `instruction` - internal instruction
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn jmpne(instruction: *const InternalInstruction, memory: &mut [u32]) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{instruction:p}: if memory[{}]:{} != memory[{}]:{} pc = {:p}",
            (*instruction).a,
            memory[(*instruction).a as usize],
            (*instruction).b,
            memory[(*instruction).b as usize],
            (*instruction).param.jmp,
        );
    }
    let instruction = if get_mem!(memory[(*instruction).a]) != get_mem!(memory[(*instruction).b]) {
        (*instruction).param.jmp
    } else {
        instruction.offset(1)
    };
    #[cfg(debug_assertions)]
    {
        println!("; pc: {instruction:p}");
    }
    next_instruction(instruction, memory)
}

/// Function to execute print
///
/// # Arguments
///
/// * `instruction` - internal instruction
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn print(instruction: *const InternalInstruction, memory: &mut [u32]) {
    #[cfg(debug_assertions)]
    {
        println!("{instruction:p}: print memory[{}]", (*instruction).a,);
    }
    println!("{}", get_mem!(memory[(*instruction).a as usize]));
    next_instruction(instruction.offset(1), memory)
}

/// Function to execute ret
///
/// # Arguments
///
/// * `instruction` - internal instruction
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
#[allow(unused_variables)]
pub unsafe fn ret(instruction: *const InternalInstruction, _memory: &mut [u32]) {
    #[cfg(debug_assertions)]
    {
        println!("{instruction:p}: ret");
    }
}

/// Virtual Machine loop
///
/// # Arguments
///
/// * `instruction` - internal instruction
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn vm_loop(instruction: &[InternalInstruction]) {
    let mut memory: [u32; 256] = [0; 256];

    ((*instruction)[0].handler)(&(*instruction)[0], &mut memory);
}

/// Print internal instruction
///
/// # Arguments
///
/// * `instruction` - internal instruction
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn print_internal_instruction(instruction: *const InternalInstruction) {
    if ptr::eq((*instruction).handler as *const (), load as *const ()) {
        println!(
            "{instruction:p}: load: memory[{}] = {}",
            (*instruction).a,
            (*instruction).param.imm
        );
    } else if ptr::eq((*instruction).handler as *const (), add as *const ()) {
        println!(
            "{instruction:p}: add: memory[{}] = memory[{}] + memory[{}]",
            (*instruction).a,
            (*instruction).b,
            (*instruction).param.c
        );
    } else if ptr::eq((*instruction).handler as *const (), jmpne as *const ()) {
        println!(
            "{instruction:p}: jmpne: if memory[{}] != memory[{}] pc = {:p}",
            (*instruction).a,
            (*instruction).b,
            (*instruction).param.jmp
        );
    } else if ptr::eq((*instruction).handler as *const (), print as *const ()) {
        println!("{instruction:p}: print: print memory[{}]", (*instruction).a,);
    } else if ptr::eq((*instruction).handler as *const (), ret as *const ()) {
        println!("{instruction:p}: ret");
    }
}

#[test]
fn test_load() {
    let internal_program = [
        InternalInstruction {
            handler: load,
            a: 0,
            b: 0,
            param: ExtraParam { imm: 1 },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
    ];
    let mut memory: [u32; 256] = [0; 256];

    unsafe {
        load(&internal_program[0], &mut memory);
    }
    assert_eq!(1, memory[0]);
}

#[test]
fn test_add() {
    let internal_program = [
        InternalInstruction {
            handler: add,
            a: 0,
            b: 1,
            param: ExtraParam { imm: 2 },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
    ];
    let mut memory: [u32; 256] = [0; 256];

    memory[0] = 0;
    memory[1] = 1;
    memory[2] = 2;
    unsafe {
        add(&internal_program[0], &mut memory);
    }
    assert_eq!(3, memory[0]);
}

#[test]
fn test_jmpne_true() {
    let mut internal_program = [
        InternalInstruction {
            handler: jmpne,
            a: 0,
            b: 1,
            param: ExtraParam { jmp: ptr::null() },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
        InternalInstruction {
            handler: load,
            a: 0,
            b: 0,
            param: ExtraParam { imm: 1 },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
    ];
    let mut memory: [u32; 256] = [0; 256];

    internal_program[0].param.jmp = &internal_program[2];
    memory[0] = 0;
    memory[1] = 1;
    unsafe {
        jmpne(&internal_program[0], &mut memory);
    }
    assert_eq!(1, memory[0]);
}

#[test]
fn test_jmpne_false() {
    let internal_program = [
        InternalInstruction {
            handler: jmpne,
            a: 0,
            b: 1,
            param: ExtraParam { jmp: ptr::null() },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
        InternalInstruction {
            handler: load,
            a: 0,
            b: 0,
            param: ExtraParam { imm: 1 },
        },
        InternalInstruction {
            handler: ret,
            a: 0,
            b: 0,
            param: ExtraParam { c: 0 },
        },
    ];
    let mut memory: [u32; 256] = [0; 256];

    memory[0] = 0;
    memory[1] = 0;
    unsafe {
        jmpne(&internal_program[0], &mut memory);
    }
    assert_eq!(0, memory[0]);
}
