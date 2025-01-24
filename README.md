# Shell Script Bug: Empty Line and Non-Numeric Input Handling

This repository demonstrates a subtle bug in a shell script that processes numbers from a file. The script incorrectly handles empty lines and non-numeric input, leading to unexpected behavior or errors.

The `bug.sh` file contains the buggy script. The `bugSolution.sh` file provides a corrected version of the script.

## Bug Description

The original script uses `bc` to convert each line to a number.  If a line is empty or contains non-numeric characters, `bc` produces an error which might cause the entire script to crash or generate incorrect output. The script doesn't explicitly handle these situations.

## Solution

The corrected script in `bugSolution.sh` uses more robust input validation. It checks if a line is empty or contains only digits before attempting to process it.