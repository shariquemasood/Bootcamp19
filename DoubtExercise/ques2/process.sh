#!/bin/bash 

while true
do
	echo "printing cpu and mem usage to a file"
	ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head > cpu_mem.log

done

