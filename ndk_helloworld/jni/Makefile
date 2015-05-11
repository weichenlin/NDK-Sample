# before use make, please config your ndk dir by environment variable:
# export NDK_ROOT=/home/your-name/android-dev/ndk

TC_ROOT=$(NDK_ROOT)/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64
TC_PREFIX=$(TC_ROOT)/bin/arm-linux-androideabi
TC_INCLUDE=$(TC_ROOT)/lib/gcc/arm-linux-androideabi/4.8/include-fixed

PLATFORM_ROOT=$(NDK_ROOT)/platforms/android-15/arch-arm
PLATFORM_INCLUDE=$(PLATFORM_ROOT)/usr/include
PLATFORM_LIB=$(PLATFORM_ROOT)/usr/lib

STLPORT_ROOT=$(NDK_ROOT)/sources/cxx-stl/stlport
STLPORT_INCLUDE=$(STLPORT_ROOT)/stlport
STLPORT_LIB=$(STLPORT_ROOT)/libs/armeabi/thumb


FLAGS_INCLUDE=-I. -I$(TC_INCLUDE) -I$(PLATFORM_INCLUDE) -I$(STLPORT_INCLUDE)
FLAGS_LIB_DIR=-L$(PLATFORM_LIB) -L$(STLPORT_LIB)

CFLAGS=$(FLAGS_INCLUDE) $(FLAGS_LIB_DIR) --sysroot=$(PLATFORM_ROOT)
LDFLAGS=-lstlport_static

CC=$(TC_PREFIX)-g++
OBJS=hello.o

all: hello

hello.o: hello.cpp
	$(CC) $(CFLAGS) -c $^

hello: hello.o
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(LDFLAGS)

clean:
	rm -rf hello *.o