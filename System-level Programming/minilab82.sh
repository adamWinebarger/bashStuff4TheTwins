#!/bin/bash

function calc2() {
	statement="${@}"

	perl -e "print $statement "
	echo ""
}