#!/bin/bash

CLION_BACKUP_DIR=~/jetbrains_configurations_backup/clion

CLION_PROCESSES_TERMINAL_NUMBERS=$(ps aux | grep /opt/clion | awk '{print $7,$2}')

for clion_pid in ${CLION_PROCESSES_TERMINAL_NUMBERS}
do
  echo ${clion_pid}
done

return

/usr/bin/clion

# TODO parametrize CLion dir or dynamically find the latest configuration dir via CLION_CONFIGURATION_DIR=$(ls -d ~/.CLion* | sort -r | head -n 1)"
cp -R ~/.CLion2019.1 ~/.CLion2019.1~

cp -R ~/jetbrains_configurations_backup/codestyle ~/.CLion2019.1/config/codestyles
cp -R ~/jetbrains_configurations_backup/fileTemplates ~/.CLion2019.1/config/fileTemplates
cp -R ~/jetbrains_configurations_backup/keymaps ~/.CLion2019.1/config/keymaps 
cp -R ~/jetbrains_configurations_backup/options ~/.CLion2019.1/config/options

