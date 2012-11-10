obj-m += edf-iosched.o
kernver := `uname -r`

all:
	make -C /lib/modules/$(kernver)/build M=`pwd`

clean:
	rm -rf *.o *.ko *.mod.c .*.cmd Module.symvers modules.order .tmp_versions
