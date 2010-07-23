LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

include $(CLEAR_VARS)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)

target_hw_init_stingray_rc_file := $(TARGET_ROOT_OUT)/init.stingray.rc
target_hw_init_olympus_rc_file := $(TARGET_ROOT_OUT)/init.olympus.rc
target_hw_ueventd_stingray_rc_file := $(TARGET_ROOT_OUT)/ueventd.stingray.rc
target_hw_ueventd_olympus_rc_file := $(TARGET_ROOT_OUT)/ueventd.olympus.rc

$(target_hw_init_stingray_rc_file) : $(LOCAL_PATH)/init.stingray.rc | $(ACP)
	$(transform-prebuilt-to-target)
$(target_hw_init_olympus_rc_file) : $(LOCAL_PATH)/init.stingray.rc | $(ACP)
	$(transform-prebuilt-to-target)
$(target_hw_ueventd_stingray_rc_file) : $(LOCAL_PATH)/ueventd.stingray.rc | $(ACP)
	$(transform-prebuilt-to-target)
$(target_hw_ueventd_olympus_rc_file) : $(LOCAL_PATH)/ueventd.stingray.rc | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(target_hw_init_stingray_rc_file) \
                $(target_hw_init_olympus_rc_file) \
                $(target_hw_ueventd_stingray_rc_file) \
                $(target_hw_ueventd_olympus_rc_file)

include $(CLEAR_VARS)

COMMON_DIR := vendor/nvidia/common/

ifeq ($(wildcard $(COMMON_DIR)/TegraBoard.mk),$(COMMON_DIR)/TegraBoard.mk)
include $(COMMON_DIR)/TegraBoard.mk
endif

include $(LOCAL_PATH)/ril/Android.mk

-include vendor/moto/stingray/AndroidBoardVendor.mk
