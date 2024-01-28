#!/bin/bash

##Checks that it's in a proper regex email format
function valid8() {
	email=$1

	if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
	then
    	echo "Email address $email is valid."
    	return 0
	else
    	echo "Email address $email is invalid."
    	return 1
	fi

}

##Checks if the characters before and after the @ are . or _... kind of useless now tho
function valid9() {
	emailString=$1

	c=${emailString%"@"*} ##before @
	d=${emailString#*"@"} ##after @

	d1=${d:0:1}
	clast=${c: -1}

	#echo $d1
	#echo $clast

	if [[ $d1 == "." || $d1 == "_" || $clast == "_" || $clast == "." ]]; then
		echo "1"
		return 1
	else
		echo "0"
		return 0
	fi

}

##Looks for duplicate occurences of dots, underlines

function valid10() {
	str=$1

	check1=".." ##Maybe we should look into an array for this
	check2=".@"
	check3="@."
	check4="_."
	check5="._"
	check6="_@"
	check7="@_"
	check8="__"

	s1=${str//"$check1"}
	s2=${str//"$check2"}
	s3=${str//"$check3"}
	s4=${str//"$check4"}
	s5=${str//"$check5"}
	s6=${str//"$check6"}
	s7=${str//"$check7"}
	s8=${str//"$check8"}

	v1="$(((${#str} - ${#s1}) / ${#check1}))"
	v2="$(((${#str} - ${#s2}) / ${#check2}))"
	v3="$(((${#str} - ${#s3}) / ${#check3}))"
	v4="$(((${#str} - ${#s4}) / ${#check4}))"
	v5="$(((${#str} - ${#s5}) / ${#check5}))"
	v6="$(((${#str} - ${#s6}) / ${#check6}))"
	v7="$(((${#str} - ${#s7}) / ${#check7}))"
	v8="$(((${#str} - ${#s8}) / ${#check8}))"

	if [[ "$(( $v1 + $v2 + $v3 + $v4 + $v5 + $v6 + $v7 + v8))" != 0 ]]; then
		echo "1"
		return 1
	else
		echo "0"
		return 0
	fi
}

##checks for duplicate @s
valid11() {
	email=$1

	res="${email//[^@]}"

	if [[ "${#res}" != 1 ]]; then

		echo "1"
		return 1
	else 
		echo "0"
		return 0
	fi
}

function checkDuplic8() {
	email=$1

	grep -E '(.)\1+'
}