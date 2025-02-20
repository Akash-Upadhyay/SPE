#!/bin/bash
echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Select operation (+, -, *, /):"
read op
echo "Result:"
echo "$a $op $b" | bc
