cmd_/home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm/.install := /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm /home/panyoujie/cm12.1/kernel/tcl/q39/include/uapi/drm drm.h drm_fourcc.h drm_mode.h drm_sarea.h exynos_drm.h i810_drm.h i915_drm.h mga_drm.h nouveau_drm.h qxl_drm.h r128_drm.h radeon_drm.h savage_drm.h sis_drm.h tegra_drm.h via_drm.h vmwgfx_drm.h; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm /home/panyoujie/cm12.1/kernel/tcl/q39/include/drm kgsl_drm.h; /bin/bash /home/panyoujie/cm12.1/kernel/tcl/q39/scripts/headers_install.sh /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/include/generated/uapi/drm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm/$$F; done; touch /home/panyoujie/cm12.1/out/target/product/q39/obj/KERNEL_OBJ/usr/include/drm/.install