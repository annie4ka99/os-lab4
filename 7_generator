#!bin/bash
./7_handler &
while true; do
  read line
  case "$line" in
    "+")
      kill -USR1 $(cat .pid_7)
      ;;
    "*")
      kill -USR2 $(cat .pid_7)
      ;;
    "TERM")
      kill -SIGTERM $(cat .pid_7)
      exit
      ;;
  esac
done
