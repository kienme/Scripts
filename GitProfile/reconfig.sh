#!/bin/sh

#Check number of args
if [ $# -eq 0 ]; then
	echo "Usage: ./$0 profile_name"
	exit
fi

FILE='.gitprofiles'
TEMP='/tmp/gitprofile'

#Check if profile file exists
if [ ! -f $FILE ]; then
	echo "Profile file not found"
	exit
fi

#Search for the pattern (with next two lines)
grep -A 2 "\[$1\]" $FILE > $TEMP

#Check if profile was found
if [ $? -eq 1 ]; then
	echo "Profile not found"
	exit
fi

#Get last two lines of matched pattern
res=`tail -n 2 $TEMP`
echo $res > $TEMP

#Source
. $TEMP

#Change config
git config user.name $name
git config user.email $email
echo "Set user.name=$name user.email=$email"