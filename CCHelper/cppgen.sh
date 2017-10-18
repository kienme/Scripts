#!/bin/sh

# Needs exactly one arg
if [ $# -ne 1 ]; then
	echo "Usage: cppgen.sh <filename>"
	exit
fi

# Append .cpp to filename if not given
if [[ $1 == *.cpp ]]; then
	filename=$1
else
	filename=$1.cpp
fi

cat > $filename << END_OF_TEMPLATE
#include <iostream>
#include <unordered_map>
#include <vector>

#define typ unsigned long long int

using namespace std;

int main()
{
	typ T;
	cin >> T;

	//Test cases
	while(T--)
	{


		//Output here with newline
	}

	return 0;
}
END_OF_TEMPLATE

#Open file using sublime text
subl3 $filename