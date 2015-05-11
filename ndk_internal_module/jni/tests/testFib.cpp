#include "CppUTest/TestHarness.h"
#include <CppUTest/MemoryLeakDetectorMallocMacros.h>
#include <fib.h>
#include <cstdint>
#include <limits>

TEST_GROUP(testFib)
{
    std::function<uint32_t()> fib;
    
    void setup() {
        fib = makeFibGenerator();
    }
};

TEST(testFib, test_first_5_value)
{
    CHECK_EQUAL(1, fib());
    CHECK_EQUAL(1, fib());
    CHECK_EQUAL(2, fib());
    CHECK_EQUAL(3, fib());
    CHECK_EQUAL(5, fib());
}

TEST(testFib, test_max_value)
{
    // run 47 times to reach max value
    for (auto i = 1; i <= 47; ++i) {
        fib();
    }

    // should only return max value for further call
    auto expect_max = std::numeric_limits<uint32_t>::max();
    CHECK_EQUAL(expect_max, fib());
    CHECK_EQUAL(expect_max, fib());
}
