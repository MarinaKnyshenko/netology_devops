#!/bin/bash

echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami

# display user home
echo "Home for the current user is: $HOME"


echo "I have \$1 in my pocket"

var1=$(( 5 + 5 ))
echo $var1
var2=$(( $var1 * 2 ))
echo $var2