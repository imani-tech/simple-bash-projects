#!/bin/bash

echo "please enter first number"
read -r num1

echo "please enter an Operation: +, - ,* ,/"
read -r operation

echo "Please enter second number"
read -r num2

echo "Calculating..."
sleep 1
echo "..."
sleep 1

case  "$operation" in 
    "+" )
       sum=$((num1 + num2))
    echo "Answer: $sum" ;;
    "-" )
        sub=$((num1 - num2))
         echo "Answer: $sub" ;;
    "*" )
        mult=$((num1 * num2))
         echo "Answer: $mult" ;;
    "/" )
        if [ "$num2" -eq 0 ]
        then
            echo "You can't divide by zero"
        else 
              div=$((num1 / num2))
             echo "Answer: $div"  
        fi
         ;;
    *)    
       echo "please enter one of the following operator: +, -, /, *" ;;    
esac


