#!/bin/bash
# cars.sh
# Sebastian Myhr
echo "Enter '1' to enter a new car"
echo "Enter '2' to display the list of cars"
echo "Enter '3' to quit the program"
read -r INPUT
while [ "$INPUT" -ne "3" ]
do
	case "$INPUT" in
		"1") echo "Enter year of car:"
		read -r YEAR
		echo "Enter make of car:"
		read -r MAKE
		echo "Enter model of car:"
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") cat My_old_cars;;
		*) echo "Invalid input. Try again";;
	esac
	echo "Enter '1' to enter a new car"
	echo "Enter '2' to display the list of cars"
	echo "Enter '3' to quit the program"
	read -r INPUT
done
echo "Bye!"
