#!/bin/bash

echo "-------------------"
echo "Backup IDE Settings"
echo "-------------------"
echo
echo "If you want to back up current Jetbrains IDE settings, Open JetBrains IDE and go to:"
echo
echo "    File -> Manage IDE Settings -> Export Setting"
echo
echo "    Check all the boxes."
echo "    Remember the location/path or the backup directory if you want to move the zip file from there somwhere else afterwards."
echo "    Click 'Export'."
echo
echo "I will wait until you do the backup."
echo

read -rsn1 -p ">>> Press any key to continue (either with or without backup)..."

echo
echo
echo "In the next step ALL CONFIGURATION OF JETBRAINS IDE WILL BE DELETED!"
echo 
read -rsn1 -p ">>> Press any key to continue to the next step... [To delete the IDE configuration]..."

echo

