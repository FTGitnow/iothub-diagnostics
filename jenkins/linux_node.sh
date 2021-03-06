#!/bin/sh

buildroot=$(cd "$(dirname "$0")/.." && pwd)

cd $buildroot

npm install
[ $? -eq 0 ] || exit $?

node iothub-diagnostics.js $IOTHUB_CONNECTION_STRING
[ $? -eq 0 ] || exit $?