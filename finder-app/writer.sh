#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Provide 2 arguments."
	exit 1
fi

writefile=$1
writestr=$2

dir=$(dirname $writefile) 
mkdir -p $dir
echo ${writestr} > ${writefile}

if [ $? -ne 0 ]; then
	echo "Error with writing to file: ${writefile}"
	exit 1
fi
