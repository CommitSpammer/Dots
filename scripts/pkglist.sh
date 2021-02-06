#!/bin/bash
PACKAGES="`emerge -p glibc baselayout texinfo gettext zlib binutils gcc | grep -e '^\[' | sed -e 's/\[.*\] //'` `emerge -p -e system | grep -e '^\[' | sed -e 's/\[.*\] //' ` `emerge -p -e world | grep -e '^\[' | sed -e 's/\[.*\] //' `"
for PACK in ${PACKAGES}; do
       echo "emerge =${PACK}"
done 
