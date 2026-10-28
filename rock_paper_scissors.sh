#!/bin/bash
choices=("Rock" "Paper" "Scissors")
playAgainAnswer="y"
sleep 0.5
echo "0: Rock"
sleep 0.5
echo "1: Paper"
sleep 0.5
echo "2: Scissors"
while [ "$playAgainAnswer" == "y" ]; do
 echo "Please choose (/0 1 2) "   
read -r playerChoice
if [[ ! "$playerChoice" =~ ^[0-2]$ ]];
then
       echo "invalid input plz choose a number between 0 to 2"
       exit 1
fi
randomNum=$(( RANDOM % 3))
computerChoice=${choices[randomNum]}
playersAnswer=${choices[playerChoice]}
if [ "$computerChoice" == "$playersAnswer" ];
then
    echo "computer choice $computerChoice, you choice $playersAnswer"
    sleep 0.2
    echo "it's a tie!"
  elif [ "$playersAnswer" == "Rock"  ] && [ "$computerChoice" == "Scissors" ];
  then 
        echo "computer choice $computerChoice, you choice $playersAnswer"
         sleep 0.2
        echo "You won!"
   elif [ "$playersAnswer" == "Paper" ] && [ "$computerChoice" == "Rock" ] ;
   then
        echo "computer choice $computerChoice, you choice $playersAnswer"
         sleep 0.2
        echo "You won"
    elif [ "$playersAnswer" == "Scissors" ] && [ "$computerChoice" == "Paper" ] ;
    then
         echo "computer choice $computerChoice, you choice $playersAnswer"
         sleep 0.2
         echo "You won"
    else 
        echo "computer choice $computerChoice, you choice $playersAnswer"
         sleep 0.2
        echo "You lost"    
fi
sleep 1.1
echo "Play again? (y/n)"
read -r playAgainAnswer
done

echo "hope you had fun"