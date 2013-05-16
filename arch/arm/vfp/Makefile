#
# linux/arch/arm/vfp/Makefile
#
# Copyright (C) 2001 ARM Limited
#

# ccflags-y := -DDEBUG
# asflags-y := -DDEBUG

<<<<<<< HEAD
KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa, -mfpu=neon-vfpv4 -funsafe-math-optimizations -mfloat-abi=softfp)
=======
KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa, -mfpu=neon-vfpv4 -funsafe-math-optimizations -mfloat-abi=soft)
>>>>>>> thracemerin/m_plus_exp
LDFLAGS		+=--no-warn-mismatch

obj-y			+= vfp.o

vfp-$(CONFIG_VFP)	+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
