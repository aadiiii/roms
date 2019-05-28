# HALs
rm -rf hardware/qcom/audio-caf/msm8952
rm -rf hardware/qcom/display-caf/msm8952
rm -rf hardware/qcom/media-caf/msm8952

git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-16.0-caf-8952 hardware/qcom/audio-caf/msm8952

git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-16.0-caf-8952 hardware/qcom/display-caf/msm8952

git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-16.0-caf-8952 hardware/qcom/media-caf/msm8952

git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-16.0-caf-8952 hardware/qcom/media/msm8952

#Trees,vendor,kernel,common-tree

git clone https://github.com/aadiiii/device_xiaomi_kenzo -b pie device/xiaomi/kenzo

git clone https://github.com/aadiiii/device_xiaomi_msm8956-common -b pie device/xiaomi/msm8956-common

git clone https://github.com/AmolAmrit/Escrima_kernel_xiaomi_msm8956 -b pie kernel/xiaomi/msm8956

git clone https://github.com/AmolAmrit/proprietary_vendor_xiaomi -b pie vendor/xiaomi

git clone https://gitlab.com/PixelExperience/prebuilts_gcc_linux-x86_aarch64_aarch64-linaro-7.2.git prebuilts/gcc/linux-x86/aarch64/aarch64-linaro-7.2
