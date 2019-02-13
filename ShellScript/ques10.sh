#!/bin/bash

echo
echo "NAME 		SIZE"
ls -l | awk '{print $9,$5}' | sed -r -e 's/ {5}/\t/g' -e 's/ /\t/g' | sed -e 's/\t/_|/g'| column -t -s '_'
