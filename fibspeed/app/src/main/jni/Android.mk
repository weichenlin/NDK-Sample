LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := fib
LOCAL_SRC_FILES := cc_aznc_fibspeed_Fibonacci.cpp
include $(BUILD_SHARED_LIBRARY)
