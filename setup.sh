#!/bin/zsh
# Setup and instructions inspired from the following blog post by Lars Gebraad
# - https://larsgeb.github.io/2022/04/20/m1-gpu.html


# NOTE: Need Xcode installed for Metal SDK dependencies
# TODO: Maybe can automate Xcode installation?


# Install Metal dependencies
brew install llvm
brew install libomp


# TODO: Add support for other versions of MacOS
#       Currently only supports MacOS 12 (my M1 MacBook Pro's current version...)
metalcppurl="https://developer.apple.com/metal/cpp/files/metal-cpp_macOS12_iOS15.zip"
metalcppzip=$(basename "$metalcppurl")

wget "$metalcppurl"
unzip $metalcppzip
