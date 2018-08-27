#http://www.engbedded.com/fusecalc/
# To build this like the author does, open tinyblink in Atom

# 13A: Remove divide by eight clock factor by changing LFUSE from 6A to 3A
avrdude -p t13 -c atmelice_isp -v -e -U lfuse:w:0x3A:m

# 85: Remove divide by eight clock factor by changing LFUSE from 62 to E2
avrdude -p t85 -c atmelice_isp -v -e -U lfuse:w:0xE2:m

# Finally flash (either ATtiny13A or ATtiny85)
avrdude -p t(13|85) -c atmelice_isp -U flash:w:firmware.hex
