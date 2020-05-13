count=`csvcut -c World total_cases.csv | tail -1`

echo "Count of confirmed cases worldwide = $count"
