#!/bin/bash
URL="https://google.com"
LOG="$HOME/devops-learning/check.log"

if curl -s -o /dev/null --max-time 5 "$URL"; then
	echo "$(date '+%Y-%m-%d %H:%M:%S') $URL OK" >> "$LOG"
else 
	echo "$(date '+%Y-%m-%d %H:%M:%S') $URL FAIL" >> "$LOG"
fi

