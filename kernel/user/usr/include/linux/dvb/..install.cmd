cmd_/home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb/.install := /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb /home/panyoujie/cm12.1/kernel/tcl/q39/include/uapi/linux/dvb audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb /home/panyoujie/cm12.1/kernel/tcl/q39/include/linux/dvb ; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/include/generated/uapi/linux/dvb ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb/$$F; done; touch /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/dvb/.install