

#!/bin/bash

echo "This script will calculate two numbers."

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

echo "You entered: $num1 and $num2"

echo "Select an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (x)"
echo "4. Division (/)"

select option in "+" "-" "x" "/"
do
    case $option in
        + )
            echo "Result: $(($num1 + $num2))"
            ;;
        - )
            echo "Result: $(($num1 - $num2))"
            ;;
        x )
            echo "Result: $(($num1 * $num2))"
            ;;
        / )
            echo "Result: $(($num1 / $num2))"
            ;;
        * )
            echo "Invalid operation"
            ;;
    esac
done



