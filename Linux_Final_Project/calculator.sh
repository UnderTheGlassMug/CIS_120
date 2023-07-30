#!/bin/bash

#Calculator
#Ava Gullitti
#7-30-2023
#This script is one of the scripts for WCC's CIS 120 Final Project

echo Welcome to the whole number calculator

#getting the numbers
echo Please enter the first number
read num1
echo Please enter the secound number
read num2

#getting the operator
echo "Please enter the operator [a] Add, [m] multiply, [d] divide, [s] subtract"
read operator

#checking if the inputs given are whole numbers
re='^[[:digit:]]+$' #creating a regular expression for all numbers
if ! [[ $num1 =~ $re ]] ; then #checking the first number
        echo You must enter two whole numbers
        exit
fi
if ! [[ $num2 =~ $re ]] ; then #checking the secound number
        echo You must enter two whole numbers
        exit
fi

#converting operator from upper to lowercase
operator=$(echo $operator | tr '[:upper:]' '[:lower:]')

#checking if the operator was entered correctly
if ! [ $operator == "a" ] && ! [ $operator == "m" ] && ! [ $operator == "d" ] && ! [ $operator == "s" ]; then
        echo You must the correct operator a or m or d or s
        exit
fi

#If the user wants to add
if [ $operator == "a" ] ; then
	echo "The sum of the two numbers is $(($num1+$num2))"
fi
#if the user wants to multiply
if [ $operator == "m" ] ; then
	echo "The product of the two numbers is $(($num1*$num2))"
fi
#If the user wants to divide
if [ $operator == "d" ] ; then
	#error will be thrown if attempted to divide by zero
	if [[ "$num2" -eq "0" ]] ; then
		echo You cannot divide by zero
		exit
	fi
	echo "The quotient is $(($num1/$num2)) with a whole number remainder of $(($num1%$num2))"
fi
#if the user wants to subtract
if [ $operator == "s" ] ; then
	echo "The difference of the two numbers is $(($num1-$num2))"
fi
