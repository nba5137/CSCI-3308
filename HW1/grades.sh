#!/bin/bash
#Sibo Song
#To compute the average and output as the format required. Not using Awk. 

sort -k3 -k4 -k2 $1 |
{
while read -r id first last s1 s2 s3
do
    avg=$(((s1 + s2 + s3) / 3));
    printf "%d [%s] %s %s\n" $avg $id "$last" "$first";
done
}
