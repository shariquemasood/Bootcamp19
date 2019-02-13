#!/bin/sh

if [ $# -gt 2 ]
then
	echo "The argument is greter than 2"
	echo "Given Arguments" $#
else
	echo "Firt argument" $1
	echo "Second argument" $2


sum(){
        x=`expr $1 + $2`
        echo "The sum is "$x
}

if [[ $1 && $2  =~ ^-?[0-9]+$ ]]
then
	echo "given argument is integer" 
	sum $1 $2
else
	echo "given argument is not integer"
	echo $1 $2 > integerlog.txt
fi
fi

