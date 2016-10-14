#!/bin/bash

read text

#>> add as a new line to diary.txt
# $( cmd) executes the command
echo $( date ) $text >> diary.txt

#alternative syntax
# echo 'date' $text >> diary.txt

#This is a new line
