# OneButton - C Firmware

## Installation

1. Download and install the arm-none-eabi gcc toolchain

https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads
We recommend installing the precompiled binaries to '/usr/local'. 
Add the bin folders (/bin & /arm-none-eabi/bin) to your environments variable 'PATH'.

2. Install STLink Tool

https://github.com/texane/stlink

3. Install OpenOCD

`$ brew update openocd`

## Build

1. Build command

`$ make`


## Credits

Base library:  http://ebrombaugh.studionebula.com/embedded/stm32f042breakout/index.html