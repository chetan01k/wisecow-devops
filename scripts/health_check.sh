#!/bin/bash

URL="https://wisecow.local"

STATUS=$(curl -k -o /dev/null -s -w "%{http_code}" $URL)

if [ "$STATUS" -eq 200 ]; then
  echo "✅ Application is UP"
else
  echo "❌ Application is DOWN (Status: $STATUS)"
fi
