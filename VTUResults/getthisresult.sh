#!/bin/sh

USN_BASE="1mv14cs"
URL="http://results.vtu.ac.in/results/result_page.php?usn="
OUT_FOLDER="Result"

download() # $1=from $2=to $3=usn
{
	usn=$1
	flag=0
	while [ $flag -eq 0 ];	do
		echo "Downloading $usn"
		curl --silent --max-time 10 "$URL$usn" > "$OUT_FOLDER/$usn.html"
		if [ $? -eq 0 ]; then
			((flag++))
		fi
	done
}

mkdir $OUT_FOLDER

#TODO: Check arg count
download "$1"

firefox $OUT_FOLDER/$1".html" &