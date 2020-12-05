#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

OS=$1
HOSTNAME=$2


echo "$1"
echo "$2"

if [ $OS == "macos" ]
then
   echo "You've got max"

elif [ $OS == "ubuntu" ]
then
	echo "You've got max"	
else
   echo "You need to select a better option"
fi

