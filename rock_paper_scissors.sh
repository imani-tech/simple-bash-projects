#!/bin/bash
choices=("Rock" "Paper" "Scissors")
echo "Please choose (/0 1 2) "
sleep 1
echo "0: Rock"
sleep 0.5
echo "1: Paper"
sleep 0.5
echo "2: Scissors"
read -r playerAnswer
randomNum=$(( RANDOM % 3))
computerChoice=${choices[randomNum]}
echo "$computerChoice"
