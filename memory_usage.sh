#!/bin/bash
memory=df -h / | tail -1 | awk -F '{print $(NF-1)}' | sed 's/%//g'
if [ $memory -ge 50 ]
then
	echo "Hi"
else
	echo "Hello"
fi

