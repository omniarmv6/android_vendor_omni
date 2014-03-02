LOCAL_PATH := $(call my-dir)
# bootanimation.zip
include $(CLEAR_VARS)
BOOTANIMATION_SRC :=
ifeq ($(filter ldpi mdpi, $(PRODUCT_AAPT_PREF_CONFIG)),)
BOOTANIMATION_SRC	:= bootanimation.zip
else
BOOTANIMATION_SRC	:= bootanimation_$(PRODUCT_AAPT_PREF_CONFIG).zip
endif

LOCAL_MODULE		:= bootanimation.zip
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= $(BOOTANIMATION_SRC)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/media
LOCAL_REQUIRED_MODULES	:= $(BOOTANIMATION_SRC)
include $(BUILD_PREBUILT)

