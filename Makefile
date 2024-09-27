# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the kernel software RAID and LVM drivers.
#

EXTRA_CFLAGS		+= -g -Wall
EXTRA_CFLAGS		+= -DCONFIG_DEBUG -DCONFIG_TRACING
EXTRA_CFLAGS		+= -Wno-comment
KDIR			:= /lib/modules/$(shell uname -r)/build
PWD			:= $(shell pwd)

obj-m  += bcache/

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
