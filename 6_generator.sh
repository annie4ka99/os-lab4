#!/bin/bash

./6_handler &

while true; do
  read line
  if [[ $line == "TERM" ]]
  then
    kill -SIGTERM $(cat .pid)
    exit
  else
    continue
  fi
done
