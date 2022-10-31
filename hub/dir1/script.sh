#!/bin/bash


quiz() {
  echo "Starting quiz..."
  random1=$(($RANDOM / 100))
  random2=$(($RANDOM / 100))
  result=$(($random1 + $random2))

  echo "What is $random1 + $random2?"
  read response
  if [ "$response" == $result ]
  then
    echo "Correct. good job."
    echo 3 >> .poeng_$SPILLER
  else
    echo "That is incorrect."
    echo -1 >> .poeng_$SPILLER

  fi
}

echo "Begin math quiz? (y/n)"
read response
if [ "$response" == "y" ] || [ "$response" == "Y" ]
then
  SECONDS=0
  quiz
  echo "If you wants to play again, run the script again."
else
  echo "Exiting..."
fi

ln -s ../../../hub connection

