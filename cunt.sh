KERNEL_DIR=$PWD
export ARCH=arm64
export KBUILD_COMPILER_STRING=UtsavTheCunt-CuntsSpace

make sanders_defconfig O=out
make -j8 O=out \
        CROSS_COMPILE_ARM32=~/arm/bin/arm-linux-androideabi- \
        CROSS_COMPILE=~/gcc-9/bin/aarch64-elf- 2>&1 | tee error.log
