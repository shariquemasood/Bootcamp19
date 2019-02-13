#!/bin/bash
#destination=`pwd`
#source='/home/sharique/ShellExercise/*'
#echo $source
#if [ -d "$source" ]
#then
#	mv  $source  /home/sharique/directory
#fi

find ~/ShellExercise/* -type d -print0 | xargs -0 mv -t ~/directory
find ~/ShellExercise/* -type f -print0 | xargs -0 mv -t ~/files
