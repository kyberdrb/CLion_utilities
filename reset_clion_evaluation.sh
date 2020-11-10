#!/bin/bash

clear -x

./utils/backup_clion_configuration.sh
./utils/delete_config_files_and_dirs.sh
./utils/restore_clion_configuration.sh

