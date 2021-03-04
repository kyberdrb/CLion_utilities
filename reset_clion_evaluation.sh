#!/bin/bash

clear -x

./utils/backup_clion_configuration.sh
./utils/delete_config_files_and_dirs.sh
./utils/restore_clion_configuration.sh

full_script_path
full_script_path="$(readlink --canonicalize "$0")"
  
local script_name
script_name="$(basename "$0")"
  
ln -sf "$full_script_path" "$HOME/$script_name"

echo "========================================="
echo "A shortcut had been placed in your home directory"
echo "for more convenient launching"
echo "located at"
echo "    $HOME/$script_name"

