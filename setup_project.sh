#!/bin/bash

echo "Enter a single name or number:" 
read input 
mkdir -p attendance_tracker_$input 
touch attendance_tracker_$input/attendance_checker.py
mkdir -p attendance_tracker_$input/Helpers
touch attendance_tracker_$input/Helpers/assets.csv
cat > attendance_tracker_$input/Helpers/config.json << EOF
{
    "warning": 75,
    "failure": 50
}
EOF
mkdir -p attendance_tracker_$input/reports
touch attendance_tracker_$input/reports/reports.log
read -p "Do you want to make updates to the thresholds? y/n " ip
if [ "$ip" = "y" ]; then
	read -p "enter new warning threshold (def 75): " warning
	read -p "enter new failure threshold (edf 50): " failure
	sed -i "s/\"warning\": 75/\"warning\": $warning/" attendance_tracker_$input/Helpers/config.json
	sed -i "s/\"failure\": 50/\"failure\": $failure/" attendance_tracker_$input/Helpers/config.json
fi

