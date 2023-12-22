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
/// * `program_counter` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn load(
    internal_program: &[InternalInstruction],
    program_counter: &mut usize,
    memory: &mut [u32],
) {
    *get_mem!(mut memory[(*internal_program)[*program_counter].a]) =
        (*internal_program)[*program_counter].param.imm;
    #[cfg(debug_assertions)]
    {
        println!(
            "{}: memory[{}] = {}; memory[{}]:{}",
            *program_counter,
            (*internal_program)[*program_counter].a,
            (*internal_program)[*program_counter].param.imm,
            (*internal_program)[*program_counter].a,
            memory[(*internal_program)[*program_counter].a as usize],
        );
    }
    *program_counter += 1;
}

/// Function to execute add
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `program_counter` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn add(
    internal_program: &[InternalInstruction],
    program_counter: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{}: memory[{}]:{} = memory[{}]:{} + memory[{}]:{}",
            *program_counter,
            (*internal_program)[*program_counter].a,
            memory[(*internal_program)[*program_counter].a as usize],
            (*internal_program)[*program_counter].b,
            memory[(*internal_program)[*program_counter].b as usize],
            (*internal_program)[*program_counter].param.c,
            memory[(*internal_program)[*program_counter].param.c as usize],
        );
    }
    *get_mem!(mut memory[(*internal_program)[*program_counter].a]) =
        *get_mem!(memory[(*internal_program)[*program_counter].b])
            + *get_mem!(memory[(*internal_program)[*program_counter].param.c]);
    #[cfg(debug_assertions)]
    {
        println!(
            "; memory[{}]:{}",
            (*internal_program)[*program_counter].a,
            memory[(*internal_program)[*program_counter].a as usize],
        );
    }
    *program_counter += 1;
}

/// Function to execute jmpne
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `program_counter` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn jmpne(
    internal_program: &[InternalInstruction],
    program_counter: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        print!(
            "{}: if memory[{}]:{} != memory[{}]:{} program_counter = {}",
            *program_counter,
            (*internal_program)[*program_counter].a,
            memory[(*internal_program)[*program_counter].a as usize],
            (*internal_program)[*program_counter].b,
            memory[(*internal_program)[*program_counter].b as usize],
            (*internal_program)[*program_counter].param.jmp,
        );
    }
    if get_mem!(memory[(*internal_program)[*program_counter].a])
        != get_mem!(memory[(*internal_program)[*program_counter].b])
    {
        *program_counter = (*internal_program)[*program_counter].param.jmp as usize;
    } else {
        *program_counter += 1;
    };
    #[cfg(debug_assertions)]
    {
        println!("; program_counter: {}", *program_counter,);
    }
}

/// Function to execute print
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `program_counter` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn print(
    internal_program: &[InternalInstruction],
    program_counter: &mut usize,
    memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        println!(
            "{}: print memory[{}]",
            *program_counter,
            (*internal_program)[*program_counter].a,
        );
    }
    println!(
        "{}",
        get_mem!(memory[(*internal_program)[*program_counter].a as usize])
    );
    *program_counter += 1;
}

/// Function to execute ret
///
/// # Arguments
///
/// * `internal_program` - internal program
/// * `program_counter` - program counter
/// * `memory` - memory
///
/// # Safety
///
/// This function accesses the union field
pub unsafe fn ret(
    _internal_program: &[InternalInstruction],
    program_counter: &mut usize,
    _memory: &mut [u32],
) {
    #[cfg(debug_assertions)]
    {
        println!("{}: ret", *program_counter);
    }
    *program_counter += 1;
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
    let mut program_counter: usize = 0;

    while program_counter < size {
        // SAFETY: the internal_program is valid.
        ((*internal_program)[program_counter].handler)(
            internal_program,
            &mut program_counter,
            &mut memory,
        );
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
            "jmpne: if memory[{}] != memory[{}] program_counter = {}",
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
    let mut program_counter: usize = 0;

    unsafe {
        load(&internal_program, &mut program_counter, &mut memory);
    }
    assert_eq!(1, program_counter);
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
    let mut program_counter: usize = 0;

    memory[0] = 0;
    memory[1] = 1;
    memory[2] = 2;
    unsafe {
        add(&internal_program, &mut program_counter, &mut memory);
    }
    assert_eq!(1, program_counter);
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
    let mut program_counter: usize = 0;

    memory[0] = 0;
    memory[1] = 1;
    unsafe {
        jmpne(&internal_program, &mut program_counter, &mut memory);
    }
    assert_eq!(0, program_counter);
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
    let mut program_counter: usize = 0;

    memory[0] = 0;
    memory[1] = 0;
    unsafe {
        jmpne(&internal_program, &mut program_counter, &mut memory);
    }
    assert_eq!(1, program_counter);
}
