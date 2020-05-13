count=`csvcut -c $1 total_cases.csv | tail -1`

echo "Total Cases in $1 = $count"
