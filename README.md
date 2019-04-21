# roms
git config --global user.email "mail@domain.com"
git config --global user.name "login"

mkdir android &&
cd android &&
mkdir rr &&
cd rr
repo init --depth=1 -u git://github.com/ResurrectionRemix/platform_manifest.git -b pie
mkdir -p .repo/local_manifests
wget https://raw.githubusercontent.com/aadiiii/roms/master/rom.xml -O .repo/local_manifests/rom.xml
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
. build/envsetup.sh
lunch rr_kenzo-userdebug

make -j4 clean && make -j4 clobber

make bacon 


rm -rf device/xiaomi/msm8956-common/light
rm -rf device/xiaomi/msm8956-common/thermal
rm -rf device/xiaomi/msm8956-common/vr





sudo shutdown && logout


lunch lineage_kenzo-eng


#errors
nano build/core/binary.mk


