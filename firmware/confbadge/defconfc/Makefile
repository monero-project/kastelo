# This Makefile is not yet complete or doesn't work correctly.
# It is provided as the basis for future command line tool use.

# AVR cross compiler toolchain used
CC = avr-gcc
OBJCOPY = avr-objcopy
DUDE = avrdude

# Typical command line manually cast looks like
# $HOME/Arduinoide/hardware/tools/avr/bin/avrdude -C $HOME/Arduinoide/hardware/tools/avr/etc/avrdude.conf -p t13 -c atmelice_isp -v -U lfuse:w:0x3A:m -U flash:w:firmware.hex

# Using ATtiny13A and the Atmel ICE programmer,
CFLAGS = -Wall -Os -mmcu=attiny13a
OBJFLAGS = -j .text -j .data -O ihex
DUDEFLAGS = -p t13 -c atmelice_isp -v

# Object files for the firmware
OBJECTS = main.o

# Command line client
CMDLINE = defconfc

# By default, build the firmware and command line client but don't flash
all: main.hex $(CMDLINE)

# Flash the firmware by typing 'make flash' on command line
# The ATTiny13A LFUSE default causes clock division by eight
flash: main.hex
	$(DUDE) $(DUDEFLAGS) -U lfuse:w:0x3A:m -U flash:w:$<

# Compile the command line client from defconfc.c
$(CMDLINE): defconfc.c
	gcc -O -Wall defconfc.c -o defconfc

# Housekeeping if you like
clean:
	$(RM) *.o *.hex *.elf

# Conversion from .elf file to .hex
%.hex: %.elf
	$(OBJCOPY) $(OBJFLAGS) $< $@

# Main.elf requires additional objects to the firmware, not just main.o
main.elf: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@

# From C source to .o object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# From assembler source to .o object file
%.o: %.S
	$(CC) $(CFLAGS) -x assembler-with-cpp -c $< -o $@
