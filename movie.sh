#!/bin/bash

#This is a simple script to let me know when Top Gun: Maverick(or any other movie in the future) will be available for streaming.
#It is scheduled to run everyday at 23.00 (0 23 * * *). 

movie="Top Gun: Maverick"
count=$(curl -l -o movie.txt https://tfpdl.se/category/movies/ | grep -i $movie movie.txt | wc -l)
if [ $count -gt 1 ]; then 
        echo $movie" is available for streaming." > /home/brian/Desktop/$movie.txt
fi

