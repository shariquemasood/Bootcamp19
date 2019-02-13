#!/bin/bash

if [ $# -gt 2 ]
then
	echo "The argument is greter than 2"
	echo $#
else
	echo Argument first: $1
	echo Argument secoind: $2
fi
