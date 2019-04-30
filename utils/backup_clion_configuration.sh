#!/bin/bash

# TODO this variable is used in utils/backup_.sh and utils/restore_.sh -> move to reset_.sh
CLION_BACKUP_DIR=~/jetbrains_configurations_backup/clion

rm -rf ${CLION_BACKUP_DIR}
rm -rf ${CLION_BACKUP_DIR}~
mkdir -p ${CLION_BACKUP_DIR}

# TODO parametrize CLion dir
# TODO automatically detect CLion dir - see utils/restore_.sh
cp -R ~/.CLion2019.1/config/codestyles ~/jetbrains_configurations_backup/codestyles
cp -R ~/.CLion2019.1/config/fileTemplates ~/jetbrains_configurations_backup/fileTemplates
cp -R ~/.CLion2019.1/config/keymaps ~/jetbrains_configurations_backup/keymaps
cp -R ~/.CLion2019.1/config/options ~/jetbrains_configurations_backup/options

touch ~/jetbrains_configurations_backup/installed.txt
touch '/home/andrej/jetbrains_configurations_backup/IntelliJ IDEA Global Settings'

7z a -tzip -y ~/jetbrains_configurations_backup/settings.zip ~/jetbrains_configurations_backup/fileTemplates/ ~/jetbrains_configurations_backup/options/ ~/jetbrains_configurations_backup/codestyles/ ~/jetbrains_configurations_backup/keymaps/ ~/jetbrains_configurations_backup/installed.txt ~/jetbrains_configurations_backup/IntelliJ\ IDEA\ Global\ Settings

echo
echo "******************************************"
echo "CLion configuration has been backed up to"
echo
echo "~/jetbrains_configurations_backup"
echo "******************************************"
echo
