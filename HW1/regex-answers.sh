#!/bin/bash
#Sibo Song
#A Bash shell script which answer questions in the pdf

#How many lines end with a number?
grep '[0-9]$' $1 |wc -l

#How many lines do not start with a vowel?
grep '^[^A,E,I,O,U,a,e,i,o,u]' $1 |wc -l

#How many 12 letter (alphabet only) lines?
grep -Eow '[A-Za-z]{12}' $1 |wc -l

#How many phone numbers are in the dataset?
grep "^[0-9]\{3\}[-][0-9]\{3\}[-][0-9]\{4\}$" $1 |wc -l

#How many city of Boulder phone numbers? format: 303-_ _ _-_ _ _ _
egrep '303+-+[0-9]+-+[0-9]+$' $1 |wc -l

#How many begin with a vowel and end with a number?
egrep '^[^A,E,I,O,U,a,e,i,o,u]+\w+[0-9]$' $1 |wc -l

#How many email addresses are from geocities? (e.g. end with geocities.com)?
grep -E '^[A-Za-z_.%-+0-9]*@geocities.com$' $1 |wc -l

#How many incorrect email address are there (lines with an @ in it but formatted incorrectly)? An email address has a user id and domain names can consist of letters, numbers, periods, and dashes. An email address has to have a top-level domain (e.g. something.com).
grep -v -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $1 |wc -l
