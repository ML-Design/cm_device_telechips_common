ifneq ($(filter tcc8803 tcc8902 tcc8902gb,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := tccgetserial.c
LOCAL_MODULE := tccgetserial
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

endif
