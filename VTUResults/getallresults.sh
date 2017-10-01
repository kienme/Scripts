#!/bin/sh

USN_BASE="1mv14cs"
URL="http://results.vtu.ac.in/results17/result_page.php?usn="
OUT_FOLDER="Results"

download() # $1=from $2=to
{
	counter=$1
	while [ $counter -lt $2 ];	do
		usn=`printf "$USN_BASE%03d" $counter`
		echo "Downloading $usn"
		curl --silent --max-time 10 "$URL$usn" > "$OUT_FOLDER/$usn.html"
		if [ $? -eq 0 ]; then
			((counter++))
		fi
	done
}

mkdir $OUT_FOLDER

download 1 137