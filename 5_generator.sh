#!/bin/bash

echo "+" > data
./5_handler &
while true; do
  read line
  echo "$line" >> data
done
