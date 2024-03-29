#!/bin/bash
# Usage: ./user_management.sh [create|delete|update] username
Prevent log files from growing too large by automating log file rotation with this script:
ACTION=$1
USERNAME=$2

case "${ACTION}" in
  create)
    sudo useradd "${USERNAME}"
    ;;
  delete)
    sudo userdel -r "${USERNAME}"
    ;;
  update)
    sudo passwd "${USERNAME}"
    ;;
  *)
    echo "Invalid action. Usage: ./user_management.sh [create|delete|update] username"
    ;;
esac