cmd_/home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma/.install := /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma /home/panyoujie/cm12.1/kernel/tcl/q39/include/uapi/rdma ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma /home/panyoujie/cm12.1/kernel/tcl/q39/include/rdma ; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/include/generated/uapi/rdma ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma/$$F; done; touch /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/rdma/.install