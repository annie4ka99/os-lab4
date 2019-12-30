#!/bin/bash

echo $$ > .pid_7

res=1
MODE="+"

usr1()
{
  MODE="+"
}

usr2()
{
  MODE="*"
}

sig()
{
  MODE="stop"
}

trap 'usr1' USR1
trap 'usr2' USR2
trap 'sig' SIGTERM

echo "initial result is 1"
while true; do
  case $MODE in
    "+")
      echo "mode is addition"
      let res=$res+2
      ;;
    "*")
      echo "mode is multiplying"
      let res=$res*2
      ;;
    "stop")
      echo "stopped by sigterm:
      exit
      ;;
  esac
  echo "result is $res"
  sleep 5
done
