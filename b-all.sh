#!/bin/bash
set -e
"$MPATH/b-plat.sh" darwin
"$MPATH/b-plat.sh" arm64-darwin
"$MPATH/b-plat.sh" armv7-darwin
"$MPATH/b-plat.sh" armv7-android
"$MPATH/b-plat.sh" x86_64-darwin
