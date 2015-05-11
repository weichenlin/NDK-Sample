LOCAL_PATH := $(call my-dir)

# *** important to save all sub makefile first
SUB_MK_FILES := $(call all-subdir-makefiles)


include $(CLEAR_VARS)
LOCAL_MODULE := app
LOCAL_SRC_FILES := app_main.cpp
LOCAL_STATIC_LIBRARIES := fib
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_MODULE := test
LOCAL_SRC_FILES := tests/test_main.cpp tests/testFib.cpp
LOCAL_STATIC_LIBRARIES := fib cpputest
include $(BUILD_EXECUTABLE)


include $(SUB_MK_FILES)

# you can use this syntax to print variable
#$(info my-dir $(call my-dir))
#$(info all-subdir $(call all-subdir-makefiles))