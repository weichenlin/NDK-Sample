#include <iostream>
#include <cstdint>
#include <limits>
#include <fib.h>

int main(void)
{
    using std::cout; using std::endl;
    
    auto fib = makeFibGenerator();
    const auto max_value = std::numeric_limits<uint32_t>::max();
    
    uint32_t val, i = 1;
    while (max_value != (val = fib())) {
        cout << "fib " << i++ << " = " << val << endl;
    }
    cout << "fib " << i << " = " << fib() << endl;
}

