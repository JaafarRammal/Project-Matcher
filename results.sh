#!/bin/bash

mkdir -p results
dUsers=$1 
rm -f $dUsers/Results*
users=$(ls ./$dUsers)

#for user in $users; do
#	echo
#	echo "$user choices are:"
#	for choice in $(tail $dUsers/$user); do
#		echo $choice
#	done
#done

for user in $users; do
	echo >> "$dUsers/Results$user"
	echo "$user matches are:" >> "$dUsers/Results$user"
	for choice in $(tail $dUsers/$user); do
		for sub_choice in $(tail $dUsers/$choice.txt); do
			if [ "$sub_choice.txt" == "$user" ]
			then
				echo $choice >> "$dUsers/Results$user"
			fi
		done
	done
done
