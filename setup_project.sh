#!/bin/bash

echo "Enter a single name or number:" 
read input 
mkdir attendance_tracker_$input 
mkdir attendance_tracker_$input/Helpers
touch attendance_tracker_$input/Helpers/assets.csv
touch attendance_tracker_$input/Helpers/config.json
mkdir attendance_tracker_$input/reports
touch attendance_tracker_$input/reports.log



