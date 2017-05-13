#!/bin/sh

USN_BASE="1mv14cs"
URL="http://results.vtu.ac.in/results/result_page.php?usn="
OUT_FOLDER="Results"

download() # $1=from $2=to $3=usn
{
	usn=$3
	counter=$1
	while [ $counter -lt $2 ];	do
		echo "Downloading $usn$counter"
		curl --silent --max-time 10 "$URL$usn$counter" > "$OUT_FOLDER/$usn$counter.html"
		if [ $? -eq 0 ]; then
			((counter++))
		fi
	done
}

mkdir $OUT_FOLDER

download 1   10  "$USN_BASE""00"
download 10  100 "$USN_BASE""0"
download 100 137 "$USN_BASE"