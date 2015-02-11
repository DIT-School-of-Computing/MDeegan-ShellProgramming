#!/bin/bash
# Mark Deegan
# Wed 11 Feb 2015 10:26:29 GMT
#
# SCRIPT NAME: bridge-script
# script to demonstrate the use of a network bridge

if [[ $# -ne 3 ]]
then
	echo usage: $0 \<port-number\> \<dest-MAC\> \<src-MAC\>
	exit 1
fi

$(grep $2 $1.txt 1>/dev/null 2>&1)
result=$?
if [[ $result -eq 0 ]]
then
	echo not forwarded
	exit 2
else
	echo forwarded
	exit 0
fi
