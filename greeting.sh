#!/bin/bash
today=$(date)
mathScore=90
englishScore=95
echo "what is your name..?";
read -r name
echo "hello $name"
echo "username: $USER"
echo "Nice to meet you: $name"
echo "Todays date is: $today"
echo "You're total score is: $((mathScore + englishScore))"