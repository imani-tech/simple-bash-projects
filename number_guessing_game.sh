#!/bin/bash
min=1
max=100
randomNum=$((RANDOM%(max-min+1)+min))
echo "Guess the number: "
read -r num

while [ "$num" -ne $randomNum ] 
do
if [ "$num" -gt $randomNum ]; then 
    echo "Number too high!"
    echo "Guess the number again: "
    read -r num 
elif [ "$num" -lt $randomNum ] ;then
    echo "Number too low"
    echo "Guess the number again: "
    read -r num 
 fi   
done
if [ "$num" -eq $randomNum ]
then
  echo "correct number "
  echo "Game Completed ..."
 fi
