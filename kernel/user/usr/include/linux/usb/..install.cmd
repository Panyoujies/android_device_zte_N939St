cmd_/home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb/.install := /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb /home/panyoujie/cm12.1/kernel/tcl/q39/include/uapi/linux/usb audio.h ccid_bridge.h cdc-wdm.h cdc.h ch11.h ch9.h functionfs.h g_printer.h gadgetfs.h midi.h msm_ext_chg.h tmc.h video.h; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb /home/panyoujie/cm12.1/kernel/tcl/q39/include/linux/usb ; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/include/generated/uapi/linux/usb ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb/$$F; done; touch /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/linux/usb/.install