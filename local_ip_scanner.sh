#!/bin/bash
for (( i = 1; i <= 255; i++ )) 
 do								     
   birmi=$(ping -c 1 192.168.1.$i | grep received | cut -d " " -f 4 )    
   if [ $birmi -eq 1 ]  
    then echo 192.168.1.$i 
   fi 
 done



