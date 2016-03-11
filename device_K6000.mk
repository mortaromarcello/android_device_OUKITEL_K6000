$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/OUKITEL/K6000/K6000-vendor.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_pref_CONFIG := xxhdpi
DEVICE_PACKAGE_OVERLAYS += device/OUKITEL/K6000/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/OUKITEL/K6000/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_libcurlPREBUILT_KERNEL)
endif


PRODUCT_PACKAGES += \
    libxlog

# init
PRODUCT_PACKAGES += \
    proj-dev-setup

# GPS
PRODUCT_PACKAGES += \
    libcurl \

PRODUCT_COPY_FILES += \
	device/OUKITEL/K6000/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/OUKITEL/K6000/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/OUKITEL/K6000/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/OUKITEL/K6000/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/OUKITEL/K6000/rootdir/init.aee.rc:root/init.aee.rc \
	device/OUKITEL/K6000/rootdir/init.project.rc:root/init.project.rc \
	device/OUKITEL/K6000/rootdir/init.modem.rc:root/init.modem.rc \
   device/OUKITEL/K6000/recovery/root/fstab.mt6735:root/fstab.mt6735  \
	device/OUKITEL/K6000/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/OUKITEL/K6000/rootdir/meta_init.rc:root/meta_init.rc \
	device/OUKITEL/K6000/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/OUKITEL/K6000/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/OUKITEL/K6000/rootdir/meta_init.modem.rc:root/factory_init.rc \
	device/OUKITEL/K6000/rootdir/meta_init.modem.rc:root/factory_init.project.rc \
	device/OUKITEL/K6000/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/configs/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    $(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_PACKAGES += \
    Torch
	
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix \
    libbt-vendor \
    libtinyalsa

#Light    
PRODUCT_PACKAGES += \
      lights.mt6735m 

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libnl_2 \
    libtinyxml

PRODUCT_COPY_FILES += \
    device/OUKITEL/K6000/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd


$(call inherit-product, build/target/product/full.mk)

#PRODUCT_NAME := full_k05ts_a
#PRODUCT_DEVICE := k05ts_a

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
ro.persist.partition.support=no \
ro.cip.partition.support=no \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=480
