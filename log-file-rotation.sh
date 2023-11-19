#!/bin/bash
# Usage: ./user_management.sh [create|delete|update] username

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