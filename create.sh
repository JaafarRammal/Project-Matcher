#!/bin/bash

#c_user=$(users)
c_user=$1

echo "Welcome back $c_user!"
echo

printf "" >> $c_user.txt
current_list=$(tail $c_user.txt)
if [ "$current_list" == "" ]
then
	echo "Your list is currently empty"
else
	echo "Your current list is:"
	for name in $current_list; do
        	echo "$name"
	done
fi
echo

read -p "Would you like any users to your preferred partners list? 
(enter N for no or a  list of the names otherwise. Please use spaces 
only to separate the different user names): " answer

echo

if [ "$answer" == "N" ]
then
	echo "Okay! Have a great day"
	exit
fi

for name in $answer; do
	echo "$name" >> $c_user.txt
done

echo "The following names were successfully added:"
for name in $answer; do
	echo "$name"
done
echo

echo "Your list is now:"
tail $c_user.txt
