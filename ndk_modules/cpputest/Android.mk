LOCAL_PATH := $(call my-dir)

FILE_LIST := $(wildcard $(LOCAL_PATH)/cpputest-3.6/src/CppUTest/*.cpp)
FILE_LIST += $(LOCAL_PATH)/cpputest-3.6/src/Platforms/Gcc/UtestPlatform.cpp
CPPUTEST_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)
CPPUTEST_C_INCLUDES := $(LOCAL_PATH)/cpputest-3.6/include

include $(CLEAR_VARS)
LOCAL_MODULE := cpputest_static
LOCAL_C_INCLUDES := $(CPPUTEST_C_INCLUDES)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_SRC_FILES := $(CPPUTEST_SRC_FILES)
LOCAL_CPP_FEATURES += exceptions
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cpputest_static_prebuilt
LOCAL_EXPORT_C_INCLUDES := $(CPPUTEST_C_INCLUDES)
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libcpputest_static.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cpputest_exe
LOCAL_SRC_FILES := testRunner.cpp
LOCAL_STATIC_LIBRARIES := cpputest_static_prebuilt
include $(BUILD_STATIC_LIBRARY)
