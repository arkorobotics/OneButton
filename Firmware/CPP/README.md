# OneButton - C++ Firmware

## Installation

1. Download and install the arm-none-eabi gcc toolchain

https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads
We recommend installing the precompiled binaries to '/usr/local'. 
Add the bin folders (/bin & /arm-none-eabi/bin) to your environments variable 'PATH'.

2. Install STLink Tool

https://github.com/texane/stlink

3. Install OpenOCD

`$ brew update openocd`

4. Install scons

`brew install scons`

## Build

1. Build with scons

`scons mode=fast mcu=f042 hsi=48000000`

## Flash Device

`st-flash --format ihex write src/build/fast-f042-48000000i/onebutton.hex`

## Credits

Base library:  https://github.com/andysworkshop/stm32plus
