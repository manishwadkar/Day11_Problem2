#!/bin/bash 

echo "Welcome to Flip Coin Simulator Problem"

echo "Flipping a coin one time"
result=$(($(($RANDOM%10))%2))
if [ $result -eq 1 ]
then
	echo "Heads Won"
else
	echo "Tails Won"
fi

echo "Flipping a coin multiple times"
i=1
count1=0
count2=0

while [ $i -le 20 ]
do
	result1=$(($(($RANDOM%10))%2))
	if [ $result1 -eq 1 ]
	then
		count1=$(($count1+1))
		((i++))
	else
		count2=$(($count2+1))
		((i++))
	fi
done

echo "Heads won " $count1 " times"
echo "Tails won " $count2 " times"
