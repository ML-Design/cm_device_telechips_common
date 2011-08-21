DEVICE_PACKAGE_OVERLAYS += device/telechips/common/overlay

PRODUCT_COPY_FILES += \
    device/telechips/common/init.d/10softmac:system/etc/init.d/10softmac \
    device/telechips/common/init.d/11pointercal:system/etc/init.d/11pointercal \
    device/telechips/common/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/telechips/common/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PACKAGES += \
    tccgetserial \
    TSCalibration

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    ro.additionalmounts=/mnt/nand;/mnt/usb \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/nand \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=161 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=45

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
