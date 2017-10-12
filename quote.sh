#!/bin/bash
len=$(cat quotes | wc -l)
len=$((len-5))
rand=$((RANDOM%len))

# while random line picked
# is less than number of lines in quotes file
# check if number is divisible by 4
while [ $rand -lt $len ]
do
	if (( $rand % 4 == 0 ))
	then
		finish=$((rand+3))
		head -"$finish" quotes | tail -3
		break
	fi
	((rand++))
done
