#!/bin/bash

date
# Welcome message
echo "Hello $USER, Welcome to the Basic Bash Calculator"

# Run the command in a conditional switch that keeps running inside a loop until the user exits
while :
do
    # The combination of read and option -p prompt the user with a message and wait to take the input
    echo "============================================="
    read -p "You can Perform the following operations:
    	     1. Addition
	     2. Substraction
	     3. Muliplication
	     4. Division
	     5. Modulo
	     6. Quit
	     =>" choice

    echo "============================================="
    
    # we declare a switch case statement by first writing case "$var" in then each case start with n) and end in ;;
    case "$choice" in
        # case 1: '+'
        1)
    		# Take the 2 numbers as n1 and n2
    		# We can write 1 read command to take multiple inputs, but this way we avoid possible mistakes from the user.
    		read -p "Enter number1: " n1
    		read -p "Enter number2: " n2
            	sum=$(( n1 + n2 )); echo "$n1 + $n2 = $sum" ;;
        
        # case 2: '-'
        # will write this one in a different syntax than case 1 that is also correct
        2)
    		# Take the 2 numbers as n1 and n2
   		read -p "Enter number1: " n1
    		read -p "Enter number2: " n2
            	echo "$n1 - $n2 = $((n1 - n2))" ;;

        # case 3: '*'
	3)
   		# Take the 2 numbers as n1 and n2
    		read -p "Enter number1: " n1
    		read -p "Enter number2: " n2
            	echo "$n1 * $n2 = $((n1 * n2))" ;;

        # case 4: '/'
        # in the '/' and '%' dividing with 0 results in errors so we use if-else conditional statement to monitor the input
        # in bash we can't compare two integers with '==' instead we use the '-eq' option
	4) 
   		 # Take the 2 numbers as n1 and n2
    		read -p "Enter number1: " n1
    		read -p "Enter number2: " n2
            	if [ $n2 -eq 0 ]; then
                	echo "Can't divide by 0"
            	else
                	echo "$n1 / $n2 = $((n1 / n2))"
            	fi
            	;;

        # case 5: '%'
        5)
    		# Take the 2 numbers as n1 and n2
    		read -p "Enter number1: " n1
    		read -p "Enter number2: " n2
            	if [ $n2 -eq 0 ]; then
                	echo "Can't divide by 0"
            	else
                	echo "$n1 % $n2 = $((n1 % n2))"
            	fi
            	;;
        # case 6: 'quit'
	6)
		echo "Bye Bye $USER, Thanks for using "
		exit 0
		;;
        # If the user's choice was not equal to any of the cases, output an error
        # default
        *)
		echo "########################"
		echo "Invalid input. Try again"
		echo "########################"
	   	;;
    #End the case block with 'esac'
    esac
done

