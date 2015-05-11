#include "fib.h"
#include <limits>
#include <tuple>

std::function<uint32_t()> makeFibGenerator()
{
    uint32_t current = 0, next = 1;
    const uint32_t max_uint32 = std::numeric_limits<uint32_t>::max();
    
    return [=] () mutable -> uint32_t {
        if (next == max_uint32) {
            return max_uint32;
        }

        if ((max_uint32 - next) < current) { // will overflow
            std::tie(current, next) = std::make_tuple(next, max_uint32);
        } else {
            std::tie(current, next) = std::make_tuple(next, current + next);
        }
        return current;
    };
}