#/bin/bash

if [ -z "$1" ]
then
	echo "Usage: compress.sh PATH_TO/Images.xcassets"
else
	base=$1
	
	echo "$base"

	for file in $(find $base -iname "*.png")
	do
  		echo "${file}"
  		pngquant --speed 1 --ext .png "${file}" --verbose --force
  		echo "pngquant on ${file}"

  		if [ -f file ]; then
    			echo "${file}"
    			break
  		fi
	done
fi
