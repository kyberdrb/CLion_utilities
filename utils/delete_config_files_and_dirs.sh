#!/bin/bash

echo
echo "--------------------------"
echo "Delete IDE Configuration"
echo "--------------------------"
echo

echo -ne "Deleting IDE configuration..."\\r

rm -rf ~/.java/.userPrefs/prefs.xml
rm -rf ~/.java/.userPrefs/jetbrains/
rm -rf ~/.config/JetBrains/CLion*/eval/

echo "Deleting IDE configuration - DONE!"

echo -ne "Resetting IDE trial..."\\r

sed -i -E 's/<property name=\"evl.*\".*\/>//' ~/.config/JetBrains/CLion*/options/other.xml

echo "Resetting IDE trial - DONE!"
echo
