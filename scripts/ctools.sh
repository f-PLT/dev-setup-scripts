#!"bin/bash
echo '*'
echo '* C configuration script - STARTING'
echo '*'

sudo apt-get install -y \
libcunit1 \
libcunit1-dev \
bats \
valgrind

echo '*'
echo '* C configuration script - Done'
echo '*'
