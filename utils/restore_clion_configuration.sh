#!/bin/bash

JETBRAINS_BACKUP_DIR=~/jetbrains_configurations_backup

mkdir '${JETBRAINS_BACKUP_DIR}'

/usr/bin/clion

# TODO parametrize CLion dir

cp -R ~/.CLion2019.1 ~/.CLion2019.1~

cp -R ~/jetbrains_configurations_backup/codestyle ~/.CLion2019.1/config/codestyles
cp -R ~/jetbrains_configurations_backup/fileTemplates ~/.CLion2019.1/config/fileTemplates
cp -R ~/jetbrains_configurations_backup/keymaps ~/.CLion2019.1/config/keymaps 
cp -R ~/jetbrains_configurations_backup/options ~/.CLion2019.1/config/options

