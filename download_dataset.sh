echo "Downloading the dataset"

wget -O owid-covid-data.csv https://covid.ourworldindata.org/data/owid-covid-data.csv
wget -O total_cases.csv https://covid.ourworldindata.org/data/ecdc/total_cases.csv
wget -O total_deaths.csv https://covid.ourworldindata.org/data/ecdc/total_deaths.csv
wget -O new_cases.csv https://covid.ourworldindata.org/data/ecdc/new_cases.csv
wget -O new_deaths.csv https://covid.ourworldindata.org/data/ecdc/new_deaths.csv
wget -O full_data.csv https://covid.ourworldindata.org/data/ecdc/full_data.csv
wget -O locations.csv https://covid.ourworldindata.org/data/ecdc/locations.csv

echo "Download complete"

sleep 2

clear
