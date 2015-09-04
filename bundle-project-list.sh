#!/bin/sh
set -e
SHA1=$1
OUT=$2
PROFILE=$3
B=`pwd`

if [[ -z "$1" ]]; then
    echo "Usage: bundle-project-list.sh [SHA1] [OUPUT_PATH] [PROFILE_PATH]"
    exit 1;
fi

echo "Getting bob.jar..."
wget  -v -O bob.jar "http://d.defold.com/archive/$SHA1/bob/bob.jar"

while read P; do
  ./bundle-project.sh $P $OUT $PROFILE
done <projects.txt
