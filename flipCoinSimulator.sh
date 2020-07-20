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

echo "Flipping a coin until either head or tail reaches 21!!!"

declare -A flipcoin
flipcoin[head]=0
flipcoin[tail]=0

while [ ${flipcoin[head]} -ne 21 -a ${flipcoin[tail]} -ne 21 ]
do
	res=$((RANDOM%2))
	if [ $res -eq 1 ]
	then
		flipcoin[head]=$((${flipcoin[head]}+1))
	else
		flipcoin[tail]=$((${flipcoin[tail]}+1))
	fi
done

echo "Head " ${flipcoin[head]}
echo "Tail " ${flipcoin[tail]}

if [ ${flipcoin[head]} -gt ${flipcoin[tail]} ]
then
	echo "Head won by: " $((${flipcoin[head]}-${flipcoin[tail]}))

elif [ ${flipcoin[head]} -eq ${flipcoin[tail]} ]
then
	echo "Its a tie"
	while [ $((${flipcoin[head]}-${flipcoin[tail]})) -eq 2 ] || [ $((${flipcoin[tail]}-${flipcoin[head]})) -eq 2 ]
	do
		res2=$((RANDOM%2))
	        if [ $res2 -eq 1 ]
	        then
        	        flipcoin[head]=$((${flipcoin[head]}+1))
	        else
                	flipcoin[tail]=$((${flipcoin[tail]}+1))
        	fi
	done
else
	echo "Tail won by " $((${flipcoin[tail]}-${flipcoin[head]}))
fi

echo "If it is a Tie => Displaying new count!!! or else count will be same as above!!!"

echo "Head " ${flipcoin[head]}
echo "Tail " ${flipcoin[tail]}

