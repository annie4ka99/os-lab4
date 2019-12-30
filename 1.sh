#!/bin/bash

testDir=$HOME/test
report=$HOME/report

mkdir -p $testDir &&
{
  echo "directory \"test\" was created successfully" >> $report
  touch "$testDir/"$(date +"%F_%R")".lst"
}
ping -c 1 -w 1 "www.net_nikogo.ru" || echo "host is not available" >> $report
