#!/bin/bash


function onlyNumbers() {
	if [[ $1 =~ [^[:digit:]] ]]; then

		#echo "1"
		return 1
	else 
		#echo "0"
		return 0
	fi
}

function firstAnd4th() {
	number=$1

	d=${number:0:0}
	e=${number:3:3}

	if [[ "$d" == 1 || "$e" == 1 ]]; then

		#echo "1"
		return 1
	else
		#echo "0"
		return 0
	fi
}

function validLength() {
	num=$1

	echo "$num"

	size=${#num}
	#echo "$size"

	if [[ "$size" != 10 ]]; then

		#echo "1"
		return 1
	else
		#echo "0"
		return 0
	fi
}