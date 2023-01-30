#!/bin/bash

date;

echo "uptime:"
uptime
echo "currently connected:"
w

echo "-----------------------------------------"

echo "Last Login"
last -a | head -3

echo "-----------------------------------------"

echo "Disk and memory usage:"

df -h | xargs | awk '{print "Free/total disk: "$11"/" $9}'
free -m | xargs | awk '{print "Free/total memory: "$10"/""MB"}'

echo "-----------------------------------------"

echo "Utilization and most exprensive processess:"

top -b | head -3
