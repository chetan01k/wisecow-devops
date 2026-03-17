#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK%"

if (( $(echo "$CPU > 80" | bc -l) )); then
  echo "⚠️ High CPU Usage!"
fi

if (( $(echo "$MEM > 80" | bc -l) )); then
  echo "⚠️ High Memory Usage!"
fi

if [ "$DISK" -gt 80 ]; then
  echo "⚠️ High Disk Usage!"
fi
