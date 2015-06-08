#!/bin/sh

if git-rev-parse --verify HEAD >/dev/null 2>&1 ; then
   against=HEAD
else
   # Initial commit: diff against an empty tree object
   against=4b825dc642cb6eb9a060e54bf8d69288fbee4904
fi

# Find files with trailing whitespace
for FILE in `exec git diff --name-only -- | sed
# '/^[+-]/d' | sed -E 's/:[0-9]+:.*//' | uniq` ; do
    # Fix them!
    echo "Cleaning whitespace and expanding tabs $FILE..."
    sed -i '' -E 's/[[:space:]]*$//' "$FILE"
    expand -t 4 "$FILE" > /tmp/tabbigt
    cp /tmp/tabbigt "$FILE"
#    git add "$FILE"
done
