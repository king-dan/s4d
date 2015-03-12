#!/bin/sh
set -e
P=$1
BOBDROP="./com.dynamo.cr/com.dynamo.cr.bob/libexec/$P"
echo "Preparing for platform [$P] bobdrop to [$BOBDROP]"
./scripts/build.py build_engine --platform=$P --skip-tests
mkdir -p "$BOBDROP"
cp "$DYNAMO_HOME/bin/$P/*" "$BOBDROP"
