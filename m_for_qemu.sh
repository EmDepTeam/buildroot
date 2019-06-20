##########################################################
# File Name		: m_for_qemu.sh
# Author		: winddoing
# Created Time	: 2018年12月10日 星期一 15时02分49秒
# Description	:
##########################################################
#!/bin/bash
if [ ! -n "${TOPDIR}" ];then
	echo "Please execute the command (source envsetup.sh) in the project root directory"
	exit 1;
fi

ARCH=arm64
IMAGE="${TOPDIR}/image_file"

if [ $ARCH == "arm64" ]; then
	echo "Build arm64 ..."
	#make qemu_aarch64_virt_defconfig
	make qemu_aarch64_virt_a_defconfig
	make
else
	echo "Build arm ..."
	make qemu_arm_vexpress_a_defconfig
	make
fi
