#!/bin/bash

## Create all icon sizes for Apple App Store submission (iPhone / iPad)  
## Designed by David Guidos, July 2015
##
## Create an icon with the largest necessary dimensions (2048 x 2048 is good)
## and run this script in the icon's folder specifying the file name of the icon.
## 
## Usage:  bash createAppIcons.sh myIcon.png
##         The script will create icons named myIcon24.png, myIcon28.png, etc.
##

## get icon properties
iconFile="$1"
iconNameExt="${iconFile##*/}"
iconName="${iconNameExt%.*}"
iconExt="${iconFile##*.}"
 
## loop creating the icons ##
arraySizes=(24 28 29 40 44 58 76 80 86 87 98 120 152 180 512 1024)
for s in "${arraySizes[@]}"
do
  newIcon=${iconName}${s}.${iconExt}
  echo "Creating ${newIcon}"
  cp $1 ${newIcon}
  sips -Z ${s} ${newIcon}
done
 