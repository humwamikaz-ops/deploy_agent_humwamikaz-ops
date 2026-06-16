# deploy_agent_humwamikaz-ops
# how to run
Run bash setup_project.sh or ./setup_project.sh
# How it works
It prompts user to enter a name/number of their choice
then instantly a directory structure is created based on their designated input.
The user is asked if he/she wants to change the thresholds, if yes you are prompted to update if not the program continues on.
Lastly, the code checks if there is python3 installed, if it isn't you'll see a warning message. if it's there you're told that it is installed.
To trigger the archive, run the script and press Ctrl+C at any point during execution. The script will automatically bundle the current project into a .tar.gz archive named attendance_tracker_{input}_archive.tar.gz before exiting and delete the incomplete folder.
# runthrough video link 
https://www.loom.com/share/cd56d98d79384fbcaa8e6c4603f66f92
