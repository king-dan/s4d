#!/bin/sh
set -e
P=$1
Q=$2
BOBDROP="./com.dynamo.cr/com.dynamo.cr.bob/libexec/$P"
BOBLIBDROP="./com.dynamo.cr/com.dynamo.cr.bob/lib/"
ENGDROP="./com.dynamo.cr/com.dynamo.cr.engine/engine/$Q"
echo "Preparing for platform [$P] bobdrop to [$BOBDROP] enginedrop to [$ENGDROP]"
./scripts/build.py build_engine --platform=$P --skip-tests
mkdir -p "$BOBDROP"
mkdir -p "$ENGDROP"
cp "$DYNAMO_HOME/bin/$P"/* "$BOBDROP"
cp "$DYNAMO_HOME/bin/$P"/* "$ENGDROP"
mkdir -p "$BOBLIBDROP"
mkdir -p "./com.dynamo.cr/com.dynamo.cr.target/res/"
cp "$DYNAMO_HOME/share/java/classes.dex" "$BOBLIBDROP" || : 
cp "$DYNAMO_HOME/share/java/dlib.jar" "$BOBLIBDROP" || : 
cp -r "$DYNAMO_HOME/ext/share/java/res"/* "./com.dynamo.cr/com.dynamo.cr.target/res/" || :
