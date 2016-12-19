#!/bin/bash

#This line addds the header to the output file where CO is the number of completed transaction, N is the number of users and idle is the pecentage of time the cpu was idle

echo "CO N IDLE" >> results.dat						

#Loop to show the rise in number of users
for i in {1..50} 									
do
#pass in the loop number as a parameter to loadtest file
    ./loadtest $i &				

#awk is used with the END{print $NF} to get the average of of idle everytime mpstat gets the data (10 times)

    idle=$(mpstat 1 10 | awk 'END{print $NF}')	

#kills the loadtest after the results have been captured	
    pkill loadtest				

#The results of the data collected are peinted onto the results.dat file					
    echo  $(wc -l synthetic.dat | awk '{print $1}')" "$i" "$idle  >> results.dat	
done
