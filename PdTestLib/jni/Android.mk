LOCAL_PATH := $(call my-dir)

#---------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := pd
LOCAL_EXPORT_C_INCLUDES := ../../../pd-for-android/PdCore/jni/libpd/pure-data/src
LOCAL_SRC_FILES := ../../../pd-for-android/PdCore/libs/$(TARGET_ARCH_ABI)/libpd.so
ifneq ($(MAKECMDGOALS),clean)
    include $(PREBUILT_SHARED_LIBRARY)
endif

#---------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := helloworld
LOCAL_CFLAGS := -DPD
LOCAL_SRC_FILES := helloworld.c
LOCAL_SHARED_LIBRARIES = pd
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------
