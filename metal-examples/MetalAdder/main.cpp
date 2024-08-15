#include <iostream>
#include <omp.h>

#include "Foundation/Foundation.hpp"
#include "Metal/Metal.hpp"
#include "QuartzCore/QuartzCore.hpp"

#include "MetalAdder.hpp"

#define NS_PRIVATE_IMPLEMENTATION
#define CA_PRIVATE_IMPLEMENTATION
#define MTL_PRIVATE_IMPLEMENTATION


int main(int argc, char *argv[]) {
  MTL:Device *device = MTL::CreateSystemDefaultDevice();
  MetalAdder *adder = new MetalAdder(device);

  adder->sendComputeCommand();
  adder->verifyResults();
}
