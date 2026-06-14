#!/bin/bash

echo "Enter a single name or number:" 
read input
cleanup() {
    echo "Interrupted! Archiving project..."
    tar -czf attendance_tracker_${input}_archive.tar.gz attendance_tracker_$input
    rm -rf attendance_tracker_$input
    exit 1
}

trap cleanup SIGINT
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

if python3 --version &>/dev/null; then
    echo "python3 is installed"
else
    echo "warning: python3 is not installed"
fi
