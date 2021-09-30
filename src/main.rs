#![no_std] // no link standad library.
#![no_main] // disable rust level entry point.

use core::panic::PanicInfo;

mod vga_buffer;

#[no_mangle] // no name
pub extern "C" fn _start() -> ! {
    println!("Hello World{}", "!");

    loop {}
}

#[panic_handler] // call in case of panic.
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);
    loop {}
}
