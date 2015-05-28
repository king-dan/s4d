#!/bin/sh
set -e
P=$1
Q=$2
BOBDROP="./com.dynamo.cr/com.dynamo.cr.bob/libexec/$P"
ENGDROP="./com.dynamo.cr/com.dynamo.cr.engine/engine/$Q"
echo "Preparing for platform [$P] bobdrop to [$BOBDROP] enginedrop to [$ENGDROP]"
./scripts/build.py build_engine --platform=$P --skip-tests
mkdir -p "$BOBDROP"
mkdir -p "$ENGDROP"
cp "$DYNAMO_HOME/bin/$P"/* "$BOBDROP"
cp "$DYNAMO_HOME/bin/$P"/* "$ENGDROP"
