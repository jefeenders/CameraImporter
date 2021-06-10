#!/usr/bin/env bash

#NAME="John"
#echo "Hello $NAME!"
cd
cd Desktop/raw/2021-05-22/

# The `-p` flag causes new intermediate directories to be created as necessary.
#mkdir -p myNewDir/with/intermediate/directories
# if the intermediate directories didn't already exist, running the above
# command without the `-p` flag would return an error
#mv s0urc3.txt dst.txt

# Bash can also accept patterns, like this to `cat`
# all the Markdown files in current directory
ls
old_birth=" "
for Output in *.RAF
do
    #stat -f "%m%t%SB %N" $Output | cut -f2-
    #https://stackoverflow.com/questions/34123076/osx-how-to-get-the-creation-modification-time-of-a-file-from-the-command-lin
    birth=$(stat -f "%SB" "$Output")
    birthstring=($birth)
    new_birth="${birthstring[0]}-${birthstring[1]}-${birthstring[3]}"
    if [[ "$A" == "$B" ]]
    echo $birth
done