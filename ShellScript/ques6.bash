#!/bin/bash

while IFS=: read -r user _ uid gid _ ;
do 
#printf "%s\t%s\t%s\n"  "$uid" "$gid"; 
printf "%s\n" "$uid" >> uid.txt
printf "%s\n" "$gid" >> gid.txt
done </etc/passwd

usum=0; 
while read num; 
do ((usum += num)); 
done < uid.txt; 
echo "all uid sum is" $usum

gsum=0;
while read num;
do ((gsum += num));
done < gid.txt

echo "all gid sum is "$gsum
if [ $gsum >  $usum ]
then 
	echo gid is greater than uid
else
	echo uid is greater than gid
fi
rm -rf /home/sharique/ShellExercise/gid.txt
rm -rf /home/sharique/ShellExercise/uid.txt
