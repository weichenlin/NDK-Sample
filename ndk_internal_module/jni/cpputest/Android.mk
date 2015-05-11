LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

FILE_LIST := CppUTest/TestResult.cpp
FILE_LIST += CppUTest/CommandLineArguments.cpp
FILE_LIST += CppUTest/TestHarness_c.cpp
FILE_LIST += CppUTest/TestPlugin.cpp
FILE_LIST += CppUTest/JUnitTestOutput.cpp
FILE_LIST += CppUTest/TestOutput.cpp
FILE_LIST += CppUTest/SimpleString.cpp
FILE_LIST += CppUTest/TestMemoryAllocator.cpp
FILE_LIST += CppUTest/MemoryLeakDetector.cpp
FILE_LIST += CppUTest/CommandLineTestRunner.cpp
FILE_LIST += CppUTest/Utest.cpp
FILE_LIST += CppUTest/TestFilter.cpp
FILE_LIST += CppUTest/TestRegistry.cpp
FILE_LIST += CppUTest/TestFailure.cpp
FILE_LIST += CppUTest/MemoryLeakWarningPlugin.cpp
FILE_LIST += Platforms/Gcc/UtestPlatform.cpp

LOCAL_MODULE := cpputest
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_SRC_FILES := $(FILE_LIST)
LOCAL_CPP_FEATURES += exceptions

include $(BUILD_STATIC_LIBRARY)
