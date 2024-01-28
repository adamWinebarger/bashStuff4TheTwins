#!/bin/bash

#cat murder_2015_final.csv
#city, state, m2014, m2015

#while read line
#do
#	echo "$line"
#done < <(tail -n +2 murder_2015_final.csv)

count=0

while IFS="," read -r city state m14 m15 chg
do 
	if [[ $m14 -ge 200 && $m15 -ge 200 ]]; then 
		echo "$city: 2014: $m14; 2015: $m15"
		((count++))
	elif [[ $m15 -ge 200 ]]; then
		echo "$city: 2015: $m15"
		((count++))
	elif [[ $m14 -ge 200 ]]; then
		echo "$city: 2014: $m14"
		((count++))
	fi
done  < <(tail -n +2 murder_2015_final.csv)

declare -

echo '1,"2,3,4,5",6' | awk -F "\"*,\"*" '{print $2}' murder_2015_final.csv > $assArray1

