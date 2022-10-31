#!/bin/bash
clear
score=0
qno=1;

while IFS='#' read -r question choices answer
do
    echo
    echo " ---------------------------------------------- "
    echo "Welcome to the  fun trivia"
    echo
    echo
    echo " ---------------------------------------------- "
    echo
    echo "There are a total of 15 questions in this quiz"
    echo " from various categories."
    echo
    echo "      ------------------------         "
    echo
    echo "Q"$qno"." $question
        qno=`expr $qno + 1`
        echo
    echo "-> "$choices
        echo
        echo "Your Answer: "
        read student_answer </dev/tty
        if [ "$student_answer" = "$answer" ]; then
                echo 3 >> .poeng_$SPILLER
                score=`expr $score + 1`
        else
                echo "Incorrect"
                echo -1 >> .poeng_$SPILLER
        fi
        clear
done <qustions.txt
echo
echo "Your Score is: $score"
#echo "Your Score Percentage is: " $(echo "scale=2 ; ($score/15*100)" | bc)
echo

