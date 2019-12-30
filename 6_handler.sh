#!/bin/bash

echo $$ > .pid

res=1
MODE="work"

sig()
{
  MODE="stop"
}

trap 'sig' SIGTERM

while true; do
  case $MODE in
    "work")
      echo $res
      let res=$res+1
      ;;
    "ostanov")
      echo "stopped by sigterm"
      exit
      ;;
  esac
  sleep 1
done
