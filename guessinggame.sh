#!/bin/bash bash
# File: guessinggame.sh

#displaying welcome note
echo "Welcome to my guessinggame"
echo "How many files are there in current directory?"



files=$(pwd | ls | wc -l)  #counting the number of files present

until [[ $response -eq $files ]]; do
    read response
    if [[ $response -gt $files ]] #starting the if statement
    then
        echo "You entered $response, which is greater than the requested number"
    elif [[ $response -lt $files ]]
    then
        echo "You entered $response, which is lower than the requested number"
    fi #ending the if statement
done

echo "You have guessed the correct answer, $response."  #correct response
