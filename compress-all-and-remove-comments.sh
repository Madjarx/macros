#!/bin/bash


# compress all files in one big one and remove comments for easier
# copy paste
# 
# requires the homebrew version of gnu sed 
# (brew ls then run the script with bash from brew)

# get all files in the current directory
files=$(find . -type f)

# compress all files into one big one
cat $files > all.lua

# remove comments
sed -i 's/^--.*$//' all.lua

# print the file