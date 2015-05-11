package cc.aznc.fibspeed;

public class Fibonacci
{
    public static int fib(int n)
    {
        if (0 == n) {
            return 0;
        }
        if (1 == n) {
            return 1;
        }

        return fib(n - 1) + fib(n - 2);
    }

    public static native int fibNative(int n);

    static {
        System.loadLibrary("fib");
    }
}
