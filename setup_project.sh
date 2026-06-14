#!/bin/bash

echo "Enter a single name or number:" 
read input 
mkdir -p attendance_tracker_$input 
touch attendance_tracker_$input/attendance_checker.py
mkdir -p attendance_tracker_$input/Helpers
touch attendance_tracker_$input/Helpers/assets.csv
touch attendance_tracker_$input/Helpers/config.json
mkdir -p attendance_tracker_$input/reports
touch attendance_tracker_$input/reports/reports.log



