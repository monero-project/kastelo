# fetch current (master branch) sources
git clone https://github.com/trezor/trezor-mcu.git/
cd trezor-mcu

# or use Cryptotronix fork
git clone https://github.com/cryptotronix/trezor-mcu/

# IMPORTANT! Correct for hard brick (blown fuse) memory protection
sed -i -e "s:\(make -C vendor/libopencm3 \&\&\):\1 sed -i -e 's;\\\(memory_protect()\\\);//\\\1;' bootloader/bootloader.c \&\&:" build-bootloader.sh

# patch using files in repository
patch -p0 <build-firmware.patch

# build things
build-firmware.sh
build-bootloader.sh

# post process to create a combined.bin
cp build/bootloader-master.bin bootloader/combine/bl.bin
cp build/trezor-master.bin bootloader/combine/fw.bin
cd bootloader
python firmware_align.py combine/bl.bin
cd combine
python prepare.py
chmod +x combined.bin

# done
echo great

# program a MCU using a Flyswatter2 JTAG in-circuit debugger
openocd -f openocd/scripts/interface/ftdi/flyswatter2.cfg -f openocd/scripts/target/stm32f2x.cfg -c 'program combined.bin 0x08000000 verify reset exit'
Open On-Chip Debugger 0.9.0 (2015-09-02-10:42)
Licensed under GNU GPL v2
For bug reports, read
	http://openocd.org/doc/doxygen/bugs.html
Info : auto-selecting first available session transport "jtag". To override use 'transport select <transport>'.
adapter speed: 1000 kHz
adapter_nsrst_delay: 100
jtag_ntrst_delay: 100
none separate
cortex_m reset_config sysresetreq
Info : clock speed 1000 kHz
Info : JTAG tap: stm32f2x.cpu tap/device found: 0x4ba00477 (mfg: 0x23b, part: 0xba00, ver: 0x4)
Info : JTAG tap: stm32f2x.bs tap/device found: 0x06411041 (mfg: 0x020, part: 0x6411, ver: 0x0)
Info : stm32f2x.cpu: hardware has 6 breakpoints, 4 watchpoints
Info : JTAG tap: stm32f2x.cpu tap/device found: 0x4ba00477 (mfg: 0x23b, part: 0xba00, ver: 0x4)
Info : JTAG tap: stm32f2x.bs tap/device found: 0x06411041 (mfg: 0x020, part: 0x6411, ver: 0x0)
target state: halted
target halted due to debug-request, current mode: Thread 
xPSR: 0x01000000 pc: 0xfffffffe msp: 0xfffffffc
** Programming Started **
auto erase enabled
Info : device id = 0x201f6411
Info : flash size = 512kbytes
wrote 524288 bytes from file combined.bin in 15.792187s (32.421 KiB/s)
** Programming Finished **
** Verify Started **
verified 447996 bytes in 3.242705s (134.917 KiB/s)
** Verified OK **
** Resetting Target **
Info : JTAG tap: stm32f2x.cpu tap/device found: 0x4ba00477 (mfg: 0x23b, part: 0xba00, ver: 0x4)
Info : JTAG tap: stm32f2x.bs tap/device found: 0x06411041 (mfg: 0x020, part: 0x6411, ver: 0x0)
shutdown command invoked

# plug in the programmed device but first execute dmesg(1)
dmesg -w
[13755.133222] usb 3-1: new full-speed USB device number 19 using xhci_hcd
[13755.261273] usb 3-1: device descriptor read/64, error -71
[13755.497304] usb 3-1: device descriptor read/64, error -71
[13755.725126] usb 3-1: new full-speed USB device number 20 using xhci_hcd
[13755.853269] usb 3-1: device descriptor read/64, error -71
[13756.089199] usb 3-1: device descriptor read/64, error -71
[13756.316929] usb 3-1: new full-speed USB device number 21 using xhci_hcd
[13756.317262] usb 3-1: Device not responding to setup address.
[13756.525405] usb 3-1: Device not responding to setup address.
[13756.732962] usb 3-1: device not accepting address 21, error -71
[13756.852964] usb 3-1: new full-speed USB device number 22 using xhci_hcd
[13756.853426] usb 3-1: Device not responding to setup address.
[13757.061276] usb 3-1: Device not responding to setup address.
[13757.272757] usb 3-1: device not accepting address 22, error -71
[13757.272808] usb usb3-port1: unable to enumerate USB device
