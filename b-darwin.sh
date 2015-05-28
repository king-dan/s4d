#!/bin/bash
set -e
MPATH=`dirname $BASH_SOURCE`
"$MPATH/b-plat.sh" arm64-darwin ios
"$MPATH/b-plat.sh" armv7-darwin arm64-ios
./scripts/build.py build_engine --skip-tests


