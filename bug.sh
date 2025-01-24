#!/bin/bash

# This script attempts to process a file containing numbers, but it has a subtle bug.
# The bug is related to how it handles empty lines and non-numeric input.

while IFS= read -r line; do
  if [[ -z "$line" ]]; then
    continue  # Skip empty lines
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

#Example numbers.txt file
#10
#20
#
#30
abc
#40