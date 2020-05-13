currdate=`csvcut -c date new_cases.csv | tail -1`

currcount=`csvcut -c $1 new_cases.csv | tail -1`

echo "New cases on $currdate in $1 = $currcount"
