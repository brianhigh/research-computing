#!/bin/bash

# Downloads image and resizes to 128x128px PNG. Requires: wget and convert.
# You will need ImageMagick: http://www.imagemagick.org/script/index.php
# Brian High, 2014-05-15, CC BY-SA 4.0, https://github.com/brianhigh
#
# Usage: bash get_logo_png.sh 'URL'
#
# This script implements something like this example "pipeline":
#   wget -nv -O - \
#     'http://www.washington.edu/brand/files/2014/09/W-Logo_Purple_Hex.png' | \
#     -format png -background transparent -resize 128x128 -gravity center \
#     -extent 128x128 logo.png logo_128.png
    
# Initialize variables
test_failed=0

# Check dependencies
for i in wget convert; do \
    which $i >/dev/null
    if [ $? -ne 0 ]; then \
        echo "Can't find $i!"
        ((test_failed++))
    fi
done

# Check number of arguments - expecting 1
if [ "$#" -ne 1 ]; then \
    echo "Usage: $0 'URL'"
    ((test_failed++))
else
    # Check that argument is a valid URL
    pattern='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
    if [[ ! "$1" =~ $pattern ]]; then \
        echo "Invalid URL!"
        ((test_failed++))
    fi
fi

[ "$test_failed" -ne 0 ] && exit $test_failed

# Get and convert image
wget -nv -O logo.png "$1" || exit 1
convert -format png -background transparent -resize 128x128 -gravity center \
    -extent 128x128 logo.png logo_128.png
