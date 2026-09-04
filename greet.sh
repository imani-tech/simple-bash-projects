#!/bin/bash
nameArray=()
#Check how many arguments were given
if [ $# -eq 0 ]
 then
    echo "No arguments provided"
 else 
    echo "Number of people: $#"
fi
#Display each name
for arg in "$@"; do
        echo "Hello $arg"
        # Quote the variable to prevent word splitting and globbing
        nameArray+=("$arg")
 done
 
 numberOfArray=${#nameArray[@]}
 firstPerson=${nameArray[0]}
echo "The array contains $numberOfArray characters"
#Display one specific element
echo "First person: $firstPerson"