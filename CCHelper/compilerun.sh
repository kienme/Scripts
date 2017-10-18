#!/bin/sh

# Needs exactly one arg
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit
fi

filename=$1

# Compile
g++ $filename -o $filename.o
result=$?

# Compile error
if [ $result -eq 1 ]; then
	exit
fi

# Read input from file called "inp"
# Output to both terminal and file called "out"
cat inp | ./$filename.o | tee out