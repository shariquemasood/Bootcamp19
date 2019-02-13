#!/bin/bash

echo "Enter Two numbers : "
read a
read b


result(){
case $ch in
  1)result=`echo $a + $b | bc`
  ;;
  2)result=`echo $a - $b | bc`
  ;;
  3)result=`echo $a \* $b | bc`
  ;;
  4)result=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result is $result"
exit 0
}

choice(){
  echo "Enter Choice :"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  read ch
  }
choice read ch

while true
do
   if [[ $ch  =~ ^-?[1-4]+$ ]] ;then
 	   result $ch         
   else
	   choice read ch
   fi
done

