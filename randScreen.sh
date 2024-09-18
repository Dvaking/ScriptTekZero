#!/bin/sh

while true
do
  random_number=$((1 + RANDOM % 4))
  if [random_number === 1]
  then
    echo "1"
    xrandr left
  elif [random_number === 2]
  then
    echo "2"
    xrandr right
  elif [random_number === 3]
    echo "3"
    xrandr inverted
  elif [random_number === 4]
    echo "4"
    xrandr normal
  fi
  sleep 1m
done
