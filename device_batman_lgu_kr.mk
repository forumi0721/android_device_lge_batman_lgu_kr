$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/batman_lgu_kr/batman_lgu_kr-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/batman_lgu_kr/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	#LOCAL_KERNEL := device/lge/batman_lgu_kr/kernel-selinux
	LOCAL_KERNEL := device/lge/batman_lgu_kr/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

##
PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
##

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_batman_lgu_kr
PRODUCT_DEVICE := batman_lgu_kr

##
#build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEFAULT_LANGUAGE=ko \
    PRODUCT_DEFAULT_REGION=KR \
	PRODUCT_DEFAULT_WIFI_CHANNELS=13 \
	PRIVATE_BUILD_DESC="batman_lgu_kr-user 4.1.2 JZO54K 2b7eaa3e36 release-keys" \
	BUILD_FINGERPRINT="LGE/batman_lgu_kr/batman:4.1.2/JZO54K/LG-F100L-V40b.1e5d95b998:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_MANUFACTURER=LGE \
	BUILD_PRODUCT=batman \
	PRODUCT_NAME=batman_lgu_kr \
	PRODUCT_DEVICE=batman

PRODUCT_CHARACTERISTICS += nosdcard

##selinux properties
#PRODUCT_PROPERTY_OVERRIDES += \
#	ro.build.selinux=0 \
#	ro.build.selinux.enforce=0 \
#	ro.boot.selinux=disabled

##common properties
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.sf.lcd_density=320 \
#    mobiledata.interfaces=rmnet_sdio0,rmnet_sdio1 \
#    rild.libpath=/system/lib/libril-qc-qmi-1.so \
#    DEVICE_PROVISIONED=1 \
#    ro.telephony.ril_class=LGEQualcommUiccRIL \
#    wifi.interface=wlan0 \
#    debug.sf.hw=1 \
#    debug.enabletr=true \
#    debug.composition.type=dyn \
#    persist.sys.usb.config=mtp,adb \
#    ro.opengles.version=131072 \
#    com.qc.hardware=true \
#    ro.bt.bdaddr_path=/data/misc/bd_addr \
#    ro.ril.shutdown=true \
#    debug.mdpcomp.maxlayer=3 \
#    debug.mdpcomp.logs=0

#rootdir
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/init.batman_lgu_kr.rc:root/init.batman_lgu_kr.rc \
	$(LOCAL_PATH)/rootdir/init.batman_lgu_kr.usb.rc:root/init.batman_lgu_kr.usb.rc \
	$(LOCAL_PATH)/rootdir/fstab.batman_lgu_kr:root/fstab.batman_lgu_kr \
	$(LOCAL_PATH)/rootdir/ueventd.batman_lgu_kr.rc:root/ueventd.batman_lgu_kr.rc \
	$(LOCAL_PATH)/rootdir/init.recovery.batman_lgu_kr.rc:recovery/init.recovery.batman_lgu_kr.rc \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00000.rle:root/bootimages/boot_logo_00000.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00007.rle:root/bootimages/boot_logo_00007.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00008.rle:root/bootimages/boot_logo_00008.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00009.rle:root/bootimages/boot_logo_00009.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00010.rle:root/bootimages/boot_logo_00010.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00011.rle:root/bootimages/boot_logo_00011.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00012.rle:root/bootimages/boot_logo_00012.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00013.rle:root/bootimages/boot_logo_00013.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00014.rle:root/bootimages/boot_logo_00014.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00015.rle:root/bootimages/boot_logo_00015.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00016.rle:root/bootimages/boot_logo_00016.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00017.rle:root/bootimages/boot_logo_00017.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00018.rle:root/bootimages/boot_logo_00018.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00019.rle:root/bootimages/boot_logo_00019.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00020.rle:root/bootimages/boot_logo_00020.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00021.rle:root/bootimages/boot_logo_00021.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00022.rle:root/bootimages/boot_logo_00022.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00023.rle:root/bootimages/boot_logo_00023.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00024.rle:root/bootimages/boot_logo_00024.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00025.rle:root/bootimages/boot_logo_00025.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00026.rle:root/bootimages/boot_logo_00026.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00027.rle:root/bootimages/boot_logo_00027.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00028.rle:root/bootimages/boot_logo_00028.rle \
	$(LOCAL_PATH)/rootdir/bootimages/boot_logo_00029.rle:root/bootimages/boot_logo_00029.rle \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_01.png:root/chargerimages/battery_charging_01.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_02.png:root/chargerimages/battery_charging_02.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_03.png:root/chargerimages/battery_charging_03.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_04.png:root/chargerimages/battery_charging_04.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_05.png:root/chargerimages/battery_charging_05.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_charging_warning.png:root/chargerimages/battery_charging_warning.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_temp_warning.png:root/chargerimages/battery_temp_warning.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_wait_01.png:root/chargerimages/battery_wait_01.png \
	$(LOCAL_PATH)/rootdir/chargerimages/battery_wait_02.png:root/chargerimages/battery_wait_02.png \
	$(LOCAL_PATH)/rootdir/chargerimages/bg_wireless.png:root/chargerimages/bg_wireless.png \
	$(LOCAL_PATH)/rootdir/chargerimages/low_battery_warning.png:root/chargerimages/low_battery_warning.png

