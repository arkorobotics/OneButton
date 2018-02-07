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

4. Instal GDB Dashboard

	https://github.com/cyrus-and/gdb-dashboard

5. Install scons

	`$ brew install scons`

## Build

1. Build source using scons
	
	Optimized:

	`$ scons mode=fast mcu=f042 hsi=48000000`

	Debug:

	`$ scons mode=debug mcu=f042 hsi=48000000`

## Flash Device

1. Flash device with optimized binary using st-flash

	`$ st-flash --format ihex write src/build/fast-f042-48000000i/onebutton.hex`

## Debug using GDB

1. Build debug binary

	`$ scons mode=debug mcu=f042 hsi=48000000`

2. Open two terminal screens

3. Terminal 1: St-Util

	`$ st-util -m`

4. Terminal 2: GDB Session

	`$ arm-none-eabi-gdb src/build/debug-f042-48000000i/onebutton.elf`

	`(gdb) target extended-remote localhost:4242`

	`(gdb) load` 

	If it fails to flash, reset the device and try again.

	Reset the device manually (TODO: Fix the load/reset procedure to reset automatically after load. Uncertain if it's SW or HW issue.)

	`(gdb) continue`


## Debug using GDB Py with GDB Dashboard

1. Build debug binary

	`$ scons mode=debug mcu=f042 hsi=48000000`

2. Open three terminal screens

3. Terminal 1: St-Util

	`$ st-util -m`

4. Terminal 2: GDB Dashboard Output

	`$ tty` 

	Note the tty session. We will use this in the following steps. (i.e. "/dev/ttys001")

5. Terminal 3: GDB Py Session

	`$ cd OneButton/Firmware/CPP`

	`$ arm-none-eabi-gdb-py src/build/debug-f042-48000000i/onebutton.elf`

	`>>> dashboard -output /dev/ttys001`

	`>>> target extended-remote localhost:4242`

	`>>> load`

	If it fails to flash, reset the device and try again.

	Reset the device manually

	`>>> continue`

	`>>> continue`

6. To load new firmware after a new build

	`>>> load`

	Reset the device manually

	`>>> continue`

	`>>> continue`

7. To recover after a segfault

	`>>> kill`

	`>>> load`

	`>>> target extended-remote localhost:4242`

	`>>> continue`

	`>>> continue`

8. To exit gracefully

	`>>> kill`

	`>>> quit`




## Check for USB HID Devices

`$ system_profiler SPUSBDataType`

## Credits

Base library:  https://github.com/andysworkshop/stm32plus
