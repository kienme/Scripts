#!/bin/sh

USN="1mv14cs085"
url="http://results.vtu.ac.in/results/result_page.php?usn=$USN"	#Change this if VTU changes the result url
html_file="output.html"
res="non_empty_string"

#Result size not zero
while [ -n "$res" ]; do
	echo "`date +%r` : Retrying..."
	curl --silent --max-time 10 $url > $html_file	#Try for 10 seconds
	
	#Result of last operation was successful (Did not time out)
	if [ $? -eq 0 ]; then
		#Checks if output contains the 'unavailable' message
		res=`grep 'University Seat Number is not available or Invalid' $html_file`
	fi
done

#Opens the saved result with firefox
firefox $html_file &

#Plays an alert sound 30 times (Please ensure speaker volume is high)
count=30
while [ $count -gt 0 ] 
do
	paplay --volume=65536 beep.wav
	((count--))
done