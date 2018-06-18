# roms
mkdir -p .repo/local_manifests


wget https://raw.githubusercontent.com/aadiiii/roms/master/rom.xml -O .repo/local_manifests/rom.xml

repo sync

. build/envsetup.sh

lunch lineage_kenzo-eng

make bacon -j4
