#!/bin/bash
echo "Enter first number:"
read a
echo "Enter seond number:"
read b
echo "Select operation (+, -, *, /):"
read op
echo "Result:"
echo "$a $op $b" | bc
