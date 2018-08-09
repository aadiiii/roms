# roms
git config --global user.email "mail@domain.com"
git config --global user.name "login"

mkdir android &&
cd android &&
mkdir lineage &&
cd lineage


repo init -u git://github.com/LineageOS/android.git -b lineage-15.1

mkdir -p .repo/local_manifests


wget https://raw.githubusercontent.com/aadiiii/roms/master/rom.xml -O .repo/local_manifests/rom.xml

repo sync



. build/envsetup.sh

rm -rf device/xiaomi/msm8956-common/light
rm -rf device/xiaomi/msm8956-common/thermal
rm -rf device/xiaomi/msm8956-common/vr

lunch lineage_kenzo-userdebug


make -j4 clean && make -j4 clobber

make bacon 


sudo shutdown && logout


lunch lineage_kenzo-eng


#errors
nano build/core/binary.mk


