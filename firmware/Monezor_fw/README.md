# README

ABOUT THIS REPOSITORY

	This is basic project for Monero HW wallet development.

	It was established by forking and putting together files from three github repositories: 

		libopencm3
		libopencm3-examples
		trezor_mcu

	Goal of this blank project is to provide other developpers clean start for 
	writing cryptographic functions. 

HOW TO START?

	At first, you have to have gcc-arm-none-eabi installed (that means, download this toolchain library:

		https://launchpad.net/gcc-arm-embedded/+download
		
	and add path to this folder to your system paths.

	For flashing firmware over the uUSB cable, you have to install also dfu-util:
	
		sudo apt-get install dfu-util
		
	For flashing th firmware over different programmer, you have to install also openocd:
	
		http://openocd.org/   (exact commands later)
		
BUILDING THE FIRMWARE:

	1. Go to libopencm3 folder, type "make" to build this whole library.
	2. Go to Monezor folder and type "make" to build the firmware. You should find monezor.bin and monezor.elf file in this Monezor folder.
	
HOW TO FLASH FIRMWARE:

If you just want to flash the firmware, USB is more convenient, but unfortunately doesn't allow debugging the code.
If you want to debug the code, working with some external programmer is much better.

	If you want to flash firmware over the usb cable:
	1. Unplug your device
	2. Put left jumper into right position and right switch into the right position.
	3. Connect the device (you should see in dmesg, that you connected STM DFU device, which 
	is what we need, since we are going to flash our binary by using the STM DFU on-chip bootloader)
	4. From the Monezor folder, where previously built monezor.bin is placed, type "make program"

	You should see the progress bar, as dfu-util is uploading the binary. Ater uploading the binary, 
	you should unplug the device from the USB, then put left switch into the left position (by this
	you are telling the MCU to boot from binary, not from the internal bootloader) and then plug it again.
	
	If you want to flash firmware over st-link programmer:
	1. Plug in USB, because the board must be powered before connecting st-link
	2. There are programming connection from the back of the board, connect the programmer here
	3. From the Monezor folder, where previously built monezor.bin is placed, type "make flash"



	
