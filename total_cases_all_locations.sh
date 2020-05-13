head -n 1 total_cases.csv > latest_total_cases.csv
tail -n 1 total_cases.csv >> latest_total_cases.csv


awk -F, 'NR==1{split($0,h);next} {for (i=3;i<=NF;i++) print "As of", $1, "Total cases in", h[i], "=", $i}' latest_total_cases.csv
