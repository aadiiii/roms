# roms
git config --global user.email "mail@domain.com"
git config --global user.name "login"

mkdir los

cd los

repo init -u git://github.com/LineageOS/android.git -b lineage-15.1

mkdir -p .repo/local_manifests


wget https://raw.githubusercontent.com/aadiiii/roms/master/rom.xml -O .repo/local_manifests/rom.xml

repo sync

nano build/core/binary.mk

. build/envsetup.sh

rm -rf device/xiaomi/msm8956-common/light
rm -rf device/xiaomi/msm8956-common/thermal
rm -rf device/xiaomi/msm8956-common/vr

lunch lineage_kenzo-userdebug


make -j4 clean && make -j4 clobber

make bacon


lunch lineage_kenzo-eng


#errors



