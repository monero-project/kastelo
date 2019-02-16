# README

## About This Repository

This is a basic firmware project for the Monero HW wallet (JULIAN CANDY EDITION) intended to support firmware development. HW information for the JULIAN CANDY device is in the hardware/monezor folder.

It was established by forking and putting together files from three github repositories:

* libopencm3
* libopencm3-examples
* trezor_mcu

The goal of this blank project is to give other developers a clean start for writing cryptographic functions, or for any kind of playing with JULIAN CANDY device. All kinds of activity is welcome, there is a lot of work to be done!

Note that most of the following instruction assumes a Unix, Linux, or similar OS.

## How To Start?

### Compiling

You have to install the arm cross compiling toolchain, since this is used for compiling the code. This can be done (on debian) by running:

```
$ sudo apt-get install gcc-arm-none-eabi
```

Once this is done, there are two separate things to build: the libopencm3 library and the firmware itself. So at first, go to the libopencm3 folder and build the library by running "make". Then, change directory to to the monezor folder.
Run "make" here as well. This should result in the files named monezor.bin and monezor.elf. Once they are there, you can continue with uploading the binary :)

### USB Vendor and Product ID (user flash boot only)

We have applied for the following VID/PID assignments:

* Bootloader circuits 0x1209/0xB0B0
* Consumer editions 0x1209/0xC0DA
* Developer editions 0x1209/0xD00D
* Microchip editions 0x04D8/0x????

We are provisionally using the FOSS VID/PID values:

* Bootloader circuits 0xF055/0xB0B0
* Consumer editions 0xF055/0xC0DA
* Developer editions 0xF055/0xD00D

We have no plans to purchase our own vendor identifer from usb.org.

### USB Rules

Go to the UDEV rules folder:

```
$ cd /etc/udev/rules.d/
```

Make a new file here:

```
$ sudo nano 99-usbdfu.rules
```

Paste these lines in:

```
# STMicroelectronics STM Device in DFU Mode (and clones)
SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="df11", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="f055", ATTR{idProduct}=="b0b0", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="f055", ATTR{idProduct}=="c0da", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="f055", ATTR{idProduct}=="d00d", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="1209", ATTR{idProduct}=="b0b0", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="1209", ATTR{idProduct}=="c0da", MODE="660", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="1209", ATTR{idProduct}=="d00d", MODE="660", GROUP="plugdev"
```

And restart your computer (or try to restart rules by this command):

```
$ sudo udevadm control --reload-rules
$ sudo udevadm trigger --action=change
```

If you later hit some problems with uploading, please check if you have rules recognized.

### Uploading the Binary to the Device

Basically you need couple of things, depending how you want to upload the binary to the device's MCU.

If you choose to upload the binary with a USB cable, it is convenient, but you cannot do stepwise debugging or use breakpoints in code. For more granular (stepwise and breakpoint) debugging, you need to use a dedicated programmer and connect it to the JTAG port of the device (please see PDF schematics in the hardware/monezor/schematics folder) in question.

#### Uploading by USB

For flashing firmware over the USB cable, we are using ST Microelectronic's factory internal bootloader\*. This may not yield a secure boot procedure, but is quite appropriate for the rapid prototyping we're currently working on. Using this bootloader is just fine for now, since it allows to upload and test binaries without a special programmer device.

\* This bootloader cannot be deleted and we are using it because of it allows convenient uploading of binaries, even for those not owning a special programmer.

For carrying out the prescribed upload procedure, install dfu-util (this is a tool for uploading binaries over USB to devices supporting usb-dfu bootloading.)

```
$ sudo apt-get install dfu-util
```

1. Unplug your device
2. There are two jumpers on the board, just next to display. Each of them could be either in the left position (between pins 1 & 2), or the right position (between pins 2 & 3). These jumpers determine in which mode the MCU is bootloading. Put both jumper to the right positions.
3. Connect the device (you should see in dmesg, that you connected STM DFU device, which is what we need, since we are going to flash our binary by using the STM DFU on-chip bootloader.)

Now go to the firmware/monezor folder and type `make program`.
Note: if you unplug and plug in the device now, it will again boot into bootloader mode with the display turned off. So, to see the device working you have to unplug it, move the left jumper to the left position causing the MCU to boot into the binary which we just uploaded, and plug the device in again.

#### Upload by ST-LINK programmer

For flashing the firmware using a ST-LINK programmer, you have to install openocd as well:

http://openocd.org/

Be sure to provide voltage to the board before plugging in the programmer. Connect the programmer to the JTAG port, go to the firmware/monezor folder and type `make flash`.

Note: If the ST-LINK programmer is not plugged into a power supply, it holds the reset pin on the GND by default, leading to a false impression that the MCU seems to be dead :)

#### Upload by J-LINK programmer

A common problem may occur when using Segger programming hardware, when openocd(1) presumes that JTAG is the desired transport. A hand crafted openocd(1) command may fail reporting:

```
Error: JTAG scan chain interrogation failed: all zeroes
Error: Check JTAG interface, timings, target power, etc.
[...]
Warn : Bypassing JTAG setup events due to errors
Error: Invalid ACK (0) in DAP response
```

Because our legacy wallet integrates a STM32 MCUs (which seems to work better with SWD), a explicit configuration entry is needed:

```sh
$ openocd -f interface/jlink.cfg -c 'transport select swd' -f target/stm32<model>.cfg -c "program firmware.elf verify reset exit"
[...]
Info : flash size = 512kbytes
wrote 131072 bytes from file firmware.elf in 4.561366s (28.062 KiB/s)
** Programming Finished **
** Verify Started **
verified 84584 bytes in 0.629730s (131.170 KiB/s)
** Verified OK **
** Resetting Target **
shutdown command invoked
```
