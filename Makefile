.POSIX:
.SUFFIXES:
EXE= cfg
MAIN= $(EXE).lua
VENDOR_C= linotify luaposix factid px
VENDOR_LUA= cimicida crc32 sha2 
VENDOR_SUBDIRS=
VENDOR_DEPS=
APP_C= 
APP_LUA= configi
MAKEFLAGS= --silent
CC= cc
export CC
LD= ld
RANLIB= ranlib
AR= ar
CCWARN= -Wall
CCOPT= -Os -mtune=generic -mmmx -msse -msse2 -fomit-frame-pointer -pipe
CFLAGS+= -ffunction-sections -fdata-sections -fno-asynchronous-unwind-tables -fno-unwind-tables
LDFLAGS= -Wl,--gc-sections -Wl,--strip-all -Wl,--relax -Wl,--sort-common
luaDEFINES:= -DLUA_COMPAT_BITLIB -DLUA_USE_POSIX
include aux/tests.mk
include aux/std.mk
include aux/rules.mk
