#!/usr/bin/env bash
echo '*'
echo '* C configuration script - STARTING'
echo '*'

sudo apt-get install -y \
libcunit1 \
libcunit1-dev \
bats \
valgrind \
cmake \
ninja-build \
pkg-config \
clang-tools \
cppcheck \
splint \
flawfinder \
gdb \
lldb \
perf \
libasan6 \
libubsan1

echo '*'
echo '* C configuration script - DONE'
echo '*'
