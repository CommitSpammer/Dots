#!/bin/bash
export PKGDIR=/mnt/data/gentoo/buildall
checkpack() {
for CHK in ${BUILD}; do
    if [ "${1}" = "${CHK}" ]; then
   return 0;
    fi
done
return 1;
}

TMPNAME=/tmp/.lx_buildall_packages
PACKAGES="`emerge -p glibc baselayout texinfo gettext zlib binutils gcc | grep -e '^\[' | sed -e 's/\[.*\] //'` `emerge -p -e system | grep -e '^\[' | sed -e 's/\[.*\] //' ` `emerge -p -e world | grep -e '^\[' | sed -e 's/\[.*\] //' `"
BUILD=`cat $TMPNAME`
for PACK in ${PACKAGES}; do
    checkpack "$PACK"
    if (( $? )); then
       echo Building ${PACK}... > /dev/tty1
       emerge -b =${PACK}
       if (( $? )); then
      echo !!!Error building ${PACK}!!!!
      echo -e "\a"
      exit 1
       fi
       BUILD="${BUILD} ${PACK}"
       echo "$BUILD" > "$TMPNAME"
       sync;
    fi
done
echo FINISHED.
rm "$TMPNAME" 
