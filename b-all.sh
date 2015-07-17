#!/bin/bash
set -e
MPATH=`dirname $BASH_SOURCE`
"$MPATH/b-plat.sh" armv7-android armv7-android
"$MPATH/b-plat.sh" arm64-darwin arm64-ios
"$MPATH/b-plat.sh" armv7-darwin ios
"$MPATH/b-plat.sh" darwin darwin
"$MPATH/b-plat.sh" x86_64-darwin darwin-64
