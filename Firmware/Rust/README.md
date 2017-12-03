# OneButton - Rust Firmware

## Installation

1. Download and install the arm-none-eabi gcc toolchain

https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads
We recommend installing the precompiled binaries to '/usr/local'. 
Add the bin folders (/bin & /arm-none-eabi/bin) to your environments variable 'PATH'.

2. Install STLink Tool

https://github.com/texane/stlink

3. Install OpenOCD

`$ brew update openocd`

4. Install Rust

`$ curl https://sh.rustup.rs -sSf | sh`

5. Install xargo

`$ cargo install xargo`

6. Set toolchain to default nightly build

`$rustup default nightly`

7. Install Rust Sources

`$ rustup component add rust-src`

## Build

1. Build command

`$ xargo build --release`


## Credits

Base toolchain:  https://github.com/therealprof/stm32f042

USB HID Library: https://github.com/Determinant/bluepill-momo2