#!/bin/bash
#Sibo Song
#To compute the average and output as the format required. Using Awk. 

sort -k3,3 -k2 $1 | awk '{print int(($4+$5+$6)/3) , "[" $1 "]" , $3 "," , $2}' 
