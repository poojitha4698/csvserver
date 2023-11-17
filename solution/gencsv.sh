#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <i1> <i2>"
  exit 1
fi

i1=$1
i2=$2

if [ "$i1" -gt "$i2" ]; then
  echo "Error: Start index must be less than or equal to end index."
  exit 1
fi

generate_csv() {
  for ((i = i1; i <= i2; i++)); do
    echo "$i, $((RANDOM % 100))"
  done
}

generate_csv >inputFile

echo "CSV file 'inputFile' generated with entries from $i1 to $i2."
