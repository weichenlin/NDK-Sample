#include "cc_aznc_fibspeed_Fibonacci.h"
#include <jni.h>

int fib(int n) {
    if (0 == n) {
        return 0;
    }
    if (1 == n) {
        return 1;
    }

    return fib(n - 1) + fib(n - 2);
}

/*
 * Class:     cc_aznc_fibspeed_Fibonacci
 * Method:    fibNative
 * Signature: (I)I
 */
jint Java_cc_aznc_fibspeed_Fibonacci_fibNative(JNIEnv *env, jclass obj, jint n)
{
    return fib(n);
}
