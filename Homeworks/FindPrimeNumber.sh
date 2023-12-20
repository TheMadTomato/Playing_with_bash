#!/bin/bash

isPrime() {
    # we pass argument to $1 so it be used by the function
    ## if n <= 1
    if [ $1 -le 1 ]; then
        echo "$1 is not a prime number"
	# after printing the message 'return' exit the function
        return
    fi
    # used a C-style for loop to itirate over th range 
    for ((i=2; i<$1; i++)); do
        # if n % i == 0 return false
        if [ $(( $1 % $i )) -eq 0 ]; then
            echo "$1 is not a prime number"
            return
        fi
    done
    # return true
    echo "$1 is prime"
}

while :
do        
    read -p "Enter a number: " num
    # Exit the code on 0
    if [ $num -eq 0 ]; then
        exit 0
    else
	# invoke the isPrime and pass $num variable to it
        isPrime $num
    fi
done

