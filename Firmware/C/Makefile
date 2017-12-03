# User Defined Variables - library path for ARMV6
LIBSPEC=-L ~/Documents/ARM_GCC/gcc-arm-none-eabi-6-2017-q2/lib/gcc/arm-none-eabi/6.3.1/thumb/v6-m

CC=arm-none-eabi-gcc

AS=arm-none-eabi-as

LD=arm-none-eabi-ld

CCFLAGS=-mcpu=cortex-m0 -mthumb -g 

OBJS=	init.o \
		serial.o \
		spi.o \
		main.o 

main.elf : $(OBJS)
	$(LD) $(OBJS) $(LIBSPEC) -lgcc -T linker_script.ld --cref -Map main.map -nostartfiles -o main.elf
	
	# Generate hex file for flashing stm32
	objcopy -O ihex main.elf main.hex

main.o: main.c
	$(CC) -c $(CCFLAGS) main.c -o main.o
	
init.o: init.c
	$(CC) -c $(CCFLAGS) init.c -o init.o

serial.o: serial.c
	$(CC) -c $(CCFLAGS) serial.c -o serial.o
	
spi.o: spi.c
	$(CC) -c $(CCFLAGS) spi.c -o spi.o	
	
clean: 
	rm $(OBJS) 
	rm main.elf 
