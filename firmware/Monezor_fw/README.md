# README

ABOUT THIS REPOSITORY

	This is basic project for Monero HW wallet (JULIAN CANDY EDITION) development.

	It was established by forking and putting together files from three github repositories: 

		libopencm3
		libopencm3-examples
		trezor_mcu

	Goal of this blank project is to provide other developpers clean start for 
	writing cryptographic functions, or for any kind of playing with JULIAN CANDY device. Any kind 
	of activity si welcomed, there is a lot of work to be done!

HOW TO START?

COMPILING:
For compiling, you have to install arm toolchain, since this toolchain is used for compiling the code. 
This can be done (on debian) by running 
	
	sudo apt-get install gcc-arm-none-eabi

Once this is done, there are two separate things you have to build: libopencm3 library and firmware itself. So at first, 
go to libopencm3 folder and build this library by running "make" here. When this is done, step out the library and go to the Monezor folder. 
Run "make" here. There should monezor.bin and monezor.elf appear in this folder. Once they are there, you can continue with uploading the binary:)

USB RULES:
go to the rules.d folder:

	cd /etc/udev/rules.d/

Make a new file here:

	sudo nano 99-usbdfu.rules
	
Paste this lines in:
	
	# STMicroelectronics STM Device in DFU Mode (and clones)
	  SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="df11", MODE="660", GROUP="plugdev"
	  
And restart your computer (or try to restart rules by this command):

	sudo udevadm trigger
	
If you later hit some problems with uploading, please check if you have rules recognized.


UPLOADING THE BINARY TO THE DEVICE:

Basically you need couple of things, based on the way how you want to upload the binary to the device's MCU. 
If you choose uploading the binary by USB cable(1), it is convenient, but you cannot do debugging in a 
way of stepping through the code and using breakpoints. For this kind of debugging work you need to use dedicated 
programmer(2) of your choice and connect it to the JTAG port on the right side of the device (please see 
pdf schematics in the sekura/hardware/monezor/schematics folder). 

	Uploading by USB:
	
	For flashing firmware over the USB cable, we are using STM internal bootloader* (please dont think about security issues, 
	for convenience reasons we think using this bootloader is just fine for now, since it allows to upload and 
	test binaries also without programmer). This bootloader is allready
	For doing so, you have to install dfu-util (this is a tool for uploading binaries over USB to devices supporting usb-dfu bootloading).
	
		sudo apt-get install dfu-util
	
	1. Unplug your device
	2. There are two jumpers on the board, just next to display. Each of them could be either in left position (between pin 1 & 2), 
		or right position (between pin 2 & 3). These jumpers are determining in which mode the MCU is bootloading. 
		Put both jumper to the right positions.
	3. Connect the device (you should see in dmesg, that you connected STM DFU device, which 
	is what we need, since we are going to flash our binary by using the STM DFU on-chip bootloader)
		
	Then go to Monezor folder and write 'make program'.
	Note: if you unplug and plug the device now, it will again boot into bootloader mode with display off. So, if you want to see the device working, 
	you have to unplug it, move the left jumper to the left position (so now it will start to boot into the binary which were just uploaded),
	and plug it again.
	
	
	Upload by ST-LINK programmer:
		
	For flashing the firmware by using ST-LINK programmer, you have to install also openocd:
	 
		http://openocd.org/
		
	Be sure to provide voltage to the board before plugging the programmer.Connect programmer 
	to the JTAG port, go to Monezor folder and write 'make flash'. 
	
	Note: If the ST-LINK programmer is not plugged into power supply, it holds the reset pin on the gnd by default, 
	that means that your MCU seems to be dead:)
		

*This bootloader cannot be deleted and we are using it because of it allows convenient uploading 
	binaries, even if you dont have programmer.
	
