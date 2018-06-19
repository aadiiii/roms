# roms
git config --global user.email "mail@domain.com"
git config --global user.name "login"

mkdir -p .repo/local_manifests


wget https://raw.githubusercontent.com/aadiiii/roms/master/rom.xml -O .repo/local_manifests/rom.xml

repo sync

. build/envsetup.sh

nano build/core/binary.mk

lunch lineage_kenzo-eng | lunch lineage_kenzo-userdebug

make -j4 clean

make bacon -j4
