#!/bin/bash

#Find the vowels
#Ava Gullitti
#7-30-2023
#This script is part of the submission for WCC's CIS120 Final project.

#Reading from text file converting all characters are lowercase
myString="$(cat sampletext.txt | tr [:upper:] [:lower:])"

#initializing counter variables
ii=0
vowel=0
a=0
e=0
i=0
o=0
u=0

#while the counter hasn't gone through each letter of the sample text
while (( ii++ < ${#myString} )); do
	#extract a letter from the sample text
	char="$(expr substr "$myString" $ii 1)"
	if [ "$char" == "a" ]; then #if the letter is a
		((vowel++))#add to  the vowel counter
		((a++))#add to the a counter
	elif [ "$char" == "e" ]; then
		((vowel++))
		((e++))
	elif [ "$char" == "i" ]; then
		((vowel++))
		((i++))
	elif [ "$char" == "o" ]; then
		((vowel++))
		((o++))
	elif [ "$char" == "u" ]; then
		((vowel++))
		((u++))
	fi
done

#output the counters to each user
echo "The total number of characters is ${#myString} with ${vowel} vowels."
echo " "
echo "The breakdown of vowels (a,e,i,o,u) is ${a} a's, ${e} e's, ${i} i's, ${o} o's and ${u} u's"
