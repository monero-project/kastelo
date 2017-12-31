##
## This file is part of the libopencm3 project.
##
## Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
##
## This library is free software: you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this library.  If not, see <http://www.gnu.org/licenses/>.
##

BINARY = monezor


###############################################################################
# Source files (modify here after adding new .c files into src folder)

OBJS		+= src/display.o
OBJS		+= src/setup.o
OBJS		+= src/util.o
OBJS		+= src/bitmaps.o
OBJS		+= src/fonts.o
OBJS		+= src/timer.o
OBJS		+= src/usb.o
#OBJS		+= src/newCfileHere.

OPENCM3_DIR=../libopencm3
LDSCRIPT = ./monezor.ld

include ../libopencm3.target.mk


