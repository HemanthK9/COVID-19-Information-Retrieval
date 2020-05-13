#This is the master script, the menu page

#First, download the dataset
echo "Downloading latest dataset from ourworldindata.org/coronavirus-source-data..."
sleep 5
sh download_dataset.sh

#Menu page


while :
do
	clear
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
	banner "MAIN MENU"
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
	
	echo "1. Total cases in a given location"
	echo "2. Total cases in all locations"
	echo "3. Number of cases in a given month"
	echo "4. Number of new cases in a given location"
	echo "5. Number of total cases location-wise"
	echo "6. Display location names which has zero new cases"
	echo "7. Exit"
	
	read -p "Enter your choice [ 1 - 7 ]: " choice
	
	case $choice in
		1)
			echo "Enter the name of the location: "
			read location
			sh total_cases_by_location.sh "$location"
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		2)
			sh total_cases_in_world.sh
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		3)
			echo "Enter the month in MM format"
			read month
			echo "Enter the yaer in YYYY format"
			read year
			bash cases_in_a_given_month.sh "$year" "$month"
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		4)
			echo "Enter location:"
			read location
			sh new_cases_in_a_given_location.sh "$location"
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		5)
			sh total_cases_all_locations.sh
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		6)
			sh locations_with_zero_new_cases.sh
			read -p "Press [Enter] to continue..." readEnterKey
			;;
		7)
			echo "Exiting"
			exit 0
			;;
	
	esac
	
	

done
