#!/bin/sh
set -e
D=$1
P=$2
echo "Preparing to deploy [$P] apps from [$D]"

if [ "$P" = "ios" ]; then
    find "$D" -iname "*.app" -exec ios-deploy --bundle '{}' \;
else
    find "$D" -iname "*.apk" -exec ~/android/android-sdk/platform-tools/adb install '{}' \;
fi
