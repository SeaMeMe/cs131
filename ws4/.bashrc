#!/bin/bash

#This shell function creates a directory and then enters that directory as well, doing two commands at once. 

mkcd(){ 
	mkdir "$1" && cd "$1"
} 

#These two alias functions essentially help create a shortcut for longer formatted commands. The first one covers cd .., which can now be done by simply typing ... 
#The second function shortens the term git status into gs, making it faster and efficient to check the status of the git repository.

alias ...='cd ..'

alias gs='git status'

#This if statement function checks if the directory given is a real directory or not. If the condition is proven to be false, the file exists, but if it is true, the file does not exist.

if [ ! -d $FILE ]; then
        echo "$FILE does not exist"
else
        echo "$FILE exists"
fi
