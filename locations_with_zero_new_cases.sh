head -n 1 new_cases.csv > latest_new_cases.csv
tail -n 1 new_cases.csv >> latest_new_cases.csv

currdate=`csvcut -c date latest_new_cases.csv | tail -1`
echo "The following locations have zero new cases as of $currdate:"

awk -F, 'NR==1{split($0,h);next} {for (i=3;i<=NF;i++) if($i == 0) print h[i];}' latest_new_cases.csv
