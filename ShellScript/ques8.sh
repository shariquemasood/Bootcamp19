#!/bin/bash

a1=$1
a2=$2
a3=$3
sed -e "s/^/$a1 /" -i  $a3
sed -e "s/$/ $a2/" -i $a3
