#!/bin/bash
choices=("Rock" "Paper" "Scissors")
echo "Please choose (/0 1 2) "
sleep 1
echo "0: Rock"
sleep 0.5
echo "1: Paper"
sleep 0.5
echo "2: Scissors"
read -r playerChoice
randomNum=$(( RANDOM % 3))
computerChoice=${choices[randomNum]}
echo "$computerChoice"
playersAnswer=${choices[playerChoice]}
echo "$playersAnswer"
if [ "$computerChoice" == "$playersAnswer" ];
then
    echo "computer choice $computerChoice, you choice $playersAnswer"
    echo "it's a tie!"
  elif [ "$playersAnswer" == "Rock"  ] && [ "$computerChoice" == "Scissors" ];
  then 
        echo "computer choice $computerChoice, you choice $playersAnswer"
        echo "You won!"
   elif [ "$playersAnswer" == "Paper" ] && [ "$computerChoice" == "Rock" ] ;
   then
        echo "computer choice $computerChoice, you choice $playersAnswer"
        echo "You won"
    elif [ "$playersAnswer" == "Scissors" ] && [ "$computerChoice" == "Paper" ] ;
    then
         echo "computer choice $computerChoice, you choice $playersAnswer"
        echo "You won"
    else 
        echo "computer choice $computerChoice, you choice $playersAnswer"
        echo "You lost"    
fi    
