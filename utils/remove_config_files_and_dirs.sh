#!/bin/bash

rm -rf ~/.java/.userPrefs/prefs.xml
rm -rf ~/.java/.userPrefs/jetbrains/
rm -rf ~/.config/JetBrains/CLion*/eval/

# consider removing only the line from with property name '.*evl.*': https://stackoverflow.com/questions/11641780/bash-delete-a-line-from-a-file-permanently/11641809#11641809
rm ~/.config/JetBrains/CLion2020.1/options/other.xml

