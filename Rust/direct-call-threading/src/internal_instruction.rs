use std::ptr;

/// Access array element with get_unchecked if "unchecked_memory" feature is defined
#[cfg(feature = "unchecked_memory")]
macro_rules! get_mem {
    ($mem:ident[$r:expr]) =>{
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
    pub jmp: u16,
    pub imm: u32,
}

/// Type for internal instruction handler
type HandlerType = unsafe fn(&[InternalInstruction], &mut usize, &mut [u32]);

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

/// Function to execute load
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `pc` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn load(
    internal_program: &[InternalInstruction],
    pc: &mut usize,
    memory: &mut [u32],
) {
    *get_mem!(mut memory[(*internal_program)[*pc].a]) =
        (*internal_program)[*pc].param.imm;
    #[cfg(debug_assertions)]
    {
        println!(
            "{}: memory[{}] = {}; memory[{}]:{}",
            *pc,
            (*internal_program)[*pc].a,
            (*internal_program)[*pc].param.imm,
            (*internal_program)[*pc].a,
            memory[(*internal_program)[*pc].a as usize],
        );
    }
    *pc += 1;
}

/// Function to execute add
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `pc` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn add(
    internal_program: &[InternalInstruction],
    pc: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{}: memory[{}]:{} = memory[{}]:{} + memory[{}]:{}",
            *pc,
            (*internal_program)[*pc].a,
            memory[(*internal_program)[*pc].a as usize],
            (*internal_program)[*pc].b,
            memory[(*internal_program)[*pc].b as usize],
            (*internal_program)[*pc].param.c,
            memory[(*internal_program)[*pc].param.c as usize],
        );
    }
    *get_mem!(mut memory[(*internal_program)[*pc].a]) =
        *get_mem!(memory[(*internal_program)[*pc].b])
            + *get_mem!(memory[(*internal_program)[*pc].param.c]);
    #[cfg(debug_assertions)]
    {
        println!(
            "; memory[{}]:{}",
            (*internal_program)[*pc].a,
            memory[(*internal_program)[*pc].a as usize],
        );
    }
    *pc += 1;
}

/// Function to execute jmpne
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `pc` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn jmpne(
    internal_program: &[InternalInstruction],
    pc: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{}: if memory[{}]:{} != memory[{}]:{} pc = {}",
            *pc,
            (*internal_program)[*pc].a,
            memory[(*internal_program)[*pc].a as usize],
            (*internal_program)[*pc].b,
            memory[(*internal_program)[*pc].b as usize],
            (*internal_program)[*pc].param.jmp,
        );
    }
    if get_mem!(memory[(*internal_program)[*pc].a])
        != get_mem!(memory[(*internal_program)[*pc].b])
    {
        *pc = (*internal_program)[*pc].param.jmp as usize;
    } else {
        *pc += 1;
    };
    #[cfg(debug_assertions)]
    {
        println!("; pc: {}", *pc,);
    }
}

/// Function to execute print
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `pc` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn print(
    internal_program: &[InternalInstruction],
    pc: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        println!("{}: print memory[{}]", *pc, (*internal_program)[*pc].a,);
    }
    println!(
        "{}",
        get_mem!(memory[(*internal_program)[*pc].a as usize])
    );
    *pc += 1;
}

/// Function to execute ret
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `pc` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn ret(
    _internal_program: &[InternalInstruction],
    pc: &mut usize,
    _memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        println!("{}: ret", *pc);
    }
    *pc += 1;
}

/// Virtual Machine loop
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `size` - program size
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn vm_loop(internal_program: &[InternalInstruction], size: usize) {
    let mut memory: [u32; 256] = [0; 256];
    let mut pc: usize = 0;

    while pc < size {
        // SAFETY: the internal_program is valid.
        ((*internal_program)[pc].handler)(internal_program, &mut pc, &mut memory);
    }
}

/// Print internal instruction
///
/// # Arguments
///
/// * `instruction` - internal program
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn print_internal_instruction(instruction: *const InternalInstruction) {
    if ptr::eq((*instruction).handler as *const (), load as *const ()) {
        println!(
            "load: memory[{}] = {}",
            (*instruction).a,
            (*instruction).param.imm
        );
    } else if ptr::eq((*instruction).handler as *const (), add as *const ()) {
        println!(
            "add: memory[{}] = memory[{}] + memory[{}]",
            (*instruction).a,
            (*instruction).b,
            (*instruction).param.c
        );
    } else if ptr::eq((*instruction).handler as *const (), jmpne as *const ()) {
        println!(
            "jmpne: if memory[{}] != memory[{}] pc = {}",
            (*instruction).a,
            (*instruction).b,
            (*instruction).param.jmp
        );
    } else if ptr::eq((*instruction).handler as *const (), print as *const ()) {
        println!("print: print memory[{}]", (*instruction).a,);
    } else if ptr::eq((*instruction).handler as *const (), ret as *const ()) {
        println!("ret");
    }
}

#[test]
fn test_load() {
    let internal_program = [InternalInstruction {
        handler: load,
        a: 0,
        b: 0,
        param: ExtraParam { imm: 1 },
    }];
    let mut memory: [u32; 256] = [0; 256];
    let mut pc: usize = 0;

    unsafe {
        load(&internal_program, &mut pc, &mut memory);
    }
    assert_eq!(1, pc);
    assert_eq!(1, memory[0]);
}

#[test]
fn test_add() {
    let internal_program = [InternalInstruction {
        handler: add,
        a: 0,
        b: 1,
        param: ExtraParam { imm: 2 },
    }];
    let mut memory: [u32; 256] = [0; 256];
    let mut pc: usize = 0;

    memory[0] = 0;
    memory[1] = 1;
    memory[2] = 2;
    unsafe {
        add(&internal_program, &mut pc, &mut memory);
    }
    assert_eq!(1, pc);
    assert_eq!(3, memory[0]);
}

#[test]
fn test_jmpne_true() {
    let internal_program = [InternalInstruction {
        handler: jmpne,
        a: 0,
        b: 1,
        param: ExtraParam { jmp: 0 },
    }];
    let mut memory: [u32; 256] = [0; 256];
    let mut pc: usize = 0;

    memory[0] = 0;
    memory[1] = 1;
    unsafe {
        jmpne(&internal_program, &mut pc, &mut memory);
    }
    assert_eq!(0, pc);
}

#[test]
fn test_jmpne_false() {
    let internal_program = [InternalInstruction {
        handler: jmpne,
        a: 0,
        b: 1,
        param: ExtraParam { jmp: 0 },
    }];
    let mut memory: [u32; 256] = [0; 256];
    let mut pc: usize = 0;

    memory[0] = 0;
    memory[1] = 0;
    unsafe {
        jmpne(&internal_program, &mut pc, &mut memory);
    }
    assert_eq!(1, pc);
}
