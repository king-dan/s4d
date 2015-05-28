#!/bin/bash
set -e
MPATH=`dirname $BASH_SOURCE`
"$MPATH/b-plat.sh" armv7-android
 ~/adb install engine/engine/build/default/src/dmengine.android/dmengine.apk 
./scripts/build.py build_engine --skip-tests
