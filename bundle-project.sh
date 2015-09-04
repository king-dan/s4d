#!/bin/sh
set -e
P=$1
O=$2
PROFILE=$3
B=`pwd`

pushd .
cd $P
echo "Bundling project: $P"
# echo "Resolve..."
# java -jar "$B/bob.jar" --email xxxxx@xxxxx.com --auth xxxxxxx resolve
echo "Build iOS..."
java -jar "$B/bob.jar" --archive --texture-profiles true --platform armv7-darwin build
echo "Bundle iOS..."
java -jar "$B/bob.jar" --identity "iPhone Distribution" --mobileprovisioning "$PROFILE" --platform armv7-darwin --bundle-output "$O" bundle
echo "Build Android..."
java -jar "$B/bob.jar" --archive --texture-profiles true --platform armv7-android build
echo "Bundle Android..."
java -jar "$B/bob.jar" --platform armv7-android --bundle-output "$O" bundle
popd
