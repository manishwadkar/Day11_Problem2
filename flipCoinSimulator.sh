#!/bin/bash

echo "Welcome to Flip Coin Simulator Problem"

result=$(($(($RANDOM%10))%2))
if [ $result -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
