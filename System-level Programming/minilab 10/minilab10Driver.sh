#!/bin/bash

source /home/adam/Documents/College\ Stuff/Fall\ 2021/System-level\ Programming/minilab\ 10/minilab10Functions.sh

function checkValidNumber() {
	#num2=$1 
	#num=$num2 | sed 's/[)(]//g'

	#num2 | tr -d '()-' > num

	#num2="$1"
	

	num=$(echo $1 | tr -cd '[[:digit:]]')
	
	onlyNumbers "$num" 
	f=$? 
	firstAnd4th $num 
	g=$?
	validLength $num 
	h=$?

	#echo "$f"
	#echo "$g"
	#echo "$h"

	if [[ "$(($f + $g + $h))" == 0 ]]; then
		echo "$1 is valid"
	else
		echo "$1 is not valid"
	fi

}