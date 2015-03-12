#!/bin/bash
set -e
MPATH=`dirname $BASH_SOURCE`
"$MPATH/b-plat.sh" arm64-darwin
"$MPATH/b-plat.sh" armv7-darwin
