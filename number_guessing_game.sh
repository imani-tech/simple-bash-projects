#!/bin/bash
min=1
max=100
randomNum=$((RANDOM%(max-min+1)+min))
attempts=0
guess_game(){
echo "Welcome to the Number Guessing Game!"
sleep 1.5
echo "I'm thinking of a number between 1 and 100. "
sleep 2
echo "Guess the number___"
read -r num

while [ "$num" -ne $randomNum ] 
do
if [ "$num" -gt $randomNum ]; then 
    echo "Number too high!"
    echo "Try again: "
    read -r num 
elif [ "$num" -lt $randomNum ] ;then
    echo "Number too low"
    echo "Try again: "
    read -r num 
 fi 
 ((attempts++))  
done
if [ "$num" -eq $randomNum ]
then
  echo "correct number "
  sleep 2
  echo "You got it in $attempts attempts!"
  echo "Game Completed ..."
  sleep 2.5
 fi
}
guess_game