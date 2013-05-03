if [ -d "archive" ]
then
rm -rf $WORKSPACE/archive
fi
mkdir -p $WORKSPACE/archive
cd $WORKSPACE/kernel-Nexus4
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=../android-toolchain-eabi/bin/arm-eabi-
make mrproper
make _m+-exp_defconfig
export BUILDNO=1
export LOCALVERSION="_m+-exp_build_"$BUILDNO
export KBUILD_BUILD_USER=thracemerin
make -j4
cp arch/arm/boot/zImage $WORKSPACE/staging/kernel
cd $WORKSPACE/staging
zip -r ../archive/m+_anykernel_422_build_$BUILDNO *
