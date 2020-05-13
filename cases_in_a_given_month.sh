#!/bin/bash
csvcut -c date,World new_cases.csv > new_world_cases.csv

#NOTE: Usage bash cases_in_a_given_month.sh 2020 03
#Take month (mm) and year (yyyy) from CLA and concat them as yyyy-mm
input_month="$1-$2"
count=0

while read line; do
	IFS=','
	read -a arr <<< "$line"
	if [[ ${arr[0]} == "$input_month"* ]]; then
		count=$(($count+${arr[1]}))
	fi
done < new_world_cases.csv

echo "Total cases in $input_month = $count"
