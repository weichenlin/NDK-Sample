#ifndef FIB_H
#define FIB_H

#include <cstdint>
#include <memory>

std::function<uint32_t()> makeFibGenerator();

#endif
