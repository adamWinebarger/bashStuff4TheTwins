#!/bin/bash

function calc() {
	val1=$1
	val2=$2

	case $3 in 

		add)
		echo "$(($1 + $2))"
		;;

		sub)
		echo "$(($1 -$2))"
		;;

		mult)
		echo "$(($1 * $2))"
		;;

		div)
		echo "$(($1 / $2))"
		;;

		*)
		echo "wat?"
		;;

	esac
}