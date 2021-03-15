#!/bin/bash

main() {
  clear -x

  SCRIPT_DIR="$(dirname "$(readlink --canonicalize "$0")")"

  "${SCRIPT_DIR}/utils/backup_clion_configuration.sh"

  "${SCRIPT_DIR}/utils/delete_config_files_and_dirs.sh"

  clear -x

  "${SCRIPT_DIR}/utils/restore_clion_configuration.sh"

  local full_script_path
  full_script_path="$(readlink --canonicalize "$0")"
    
  local script_name
  script_name="$(basename "$0")"
    
  ln -sf "$full_script_path" "$HOME/$script_name"

  echo "========================================="
  echo "A shortcut had been placed in your home directory"
  echo "for more convenient launching"
  echo "located at"
  echo "    $HOME/$script_name"
}

main
