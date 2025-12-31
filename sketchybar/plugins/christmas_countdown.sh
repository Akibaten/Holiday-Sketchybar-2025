#!/bin/sh
if [ $(date +%m)="25" ] && [ $(date +%d) -gt "25" ]; then
  year=$(($(date +%y) + 1))
  echo $year
else
  year=$(date +%y)
fi
days_until_xmas=$(($(($(date -j -f "%Y-%m-%d" "20$year-12-25" +%s) - $(date +%s))) / 86400))
echo $days_until_xmas
sketchybar --set "$NAME" label="$days_until_xmas days until christmas"
