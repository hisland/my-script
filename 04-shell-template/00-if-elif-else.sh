#!/bin/bash

if [ -z "$1" ]; then
	echo 123
elif [ "$1" -eq "3" ]; then
	echo 455
else
	echo "else"
fi
