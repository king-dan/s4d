#!/bin/bash
set -e
MPATH=`dirname $BASH_SOURCE`
"$MPATH/b-plat.sh" js-web js-web
