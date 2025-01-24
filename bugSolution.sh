#!/bin/bash

# Corrected script to handle empty lines and non-numeric input robustly

while IFS= read -r line; do
  # Check for empty lines
  if [[ -z "$line" ]]; then
    continue
  fi

  # Check for non-numeric input using regular expressions
  if [[ ! "$line" =~ ^[0-9]+$ ]]; then
    echo "Warning: Skipping non-numeric line: $line"
    continue
  fi

  num=$(echo "$line" | bc)
  echo "Processing number: $num"
  # ... process the number ...
  if (( num > 10 )); then
    echo "Number exceeds 10"
  fi
  if (( num < 0 )); then
    echo "Number less than 0"
  fi
done < "numbers.txt"