#!/bin/bash

MODNAME="NukularFuel_${1}"
ZIPNAME="${MODNAME}.zip"

mkdir ${MODNAME}
rsync -a --info=progress2 \
 --exclude ".git*" \
 --exclude "*.sh" \
 --exclude "${MODNAME}" \
 . ${MODNAME}
zip -r ${ZIPNAME} ${MODNAME}
rm -rf ${MODNAME}
