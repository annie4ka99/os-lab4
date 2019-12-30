#!/bin/bash
res=1
MODE='+'
echo "initial result is 1"
(tail -n 0 -f data) |
while true; do
  read line
  case $line in
    "QUIT")
      echo "exit"
      killall tail
      kilall 5_generator
      exit 0
      ;;
    "+")
      MODE='+'
      echo "now mode is addition"
      ;;
    "*")
      MODE='*'
      echo "now mode is multiplying"
      ;;
    [0-9]*)
      if [[ $MODE == '+' ]]
      then
        let res=$res+$line
      else
        let res=$res*$line
      fi
      ;;
    *)
      echo "incorrect input"
      killall tail
      killall 5_generator
      exit 1
      ;;
  esac
  echo "result is $res"
done
      
