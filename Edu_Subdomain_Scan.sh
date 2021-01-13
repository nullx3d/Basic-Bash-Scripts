#!/bin/bash


echo "url giriniz:"

read url


wget $url 

cat index.html | grep href | cut -d "/" -f 3 | grep edu | cut -d '"' -f 1 | sort -u > alldomain.txt 


for line in $(cat alldomain.txt);
 do host $line | grep "has" | cut -d " " -f 4  >> ipaddress.txt ; 
 done
