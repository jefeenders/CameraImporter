#!/usr/bin/env bash
echo $BASH_VERSION

#NAME="John"
#echo "Hello $NAME!"
cd
cd /Users/jan-emmofeenders/Desktop/testmove

# The `-p` flag causes new intermediate directories to be created as necessary.
#mkdir -p myNewDir/with/intermediate/directories
# if the intermediate directories didn't already exist, running the above
# command without the `-p` flag would return an error
#mv s0urc3.txt dst.txts

# Bash can also accept patterns, like this to `cat`
# all the Markdown files in current directory
ls
old_birth=" "
current_dir=" "
declare -A month_dict
month_dict[January]="01"
month_dict[February]="02"
month_dict[March]="03"
month_dict[April]="04"
month_dict[May]="05"
month_dict[June]="06"
month_dict[July]="07"
month_dict[August]="08"
month_dict[September]="09"
month_dict[October]="10"
month_dict[November]="11"
month_dict[December]="12"

for Output in *.RAF
do
    #stat -f "%m%t%SB %N" $Output | cut -f2-
    #https://stackoverflow.com/questions/34123076/osx-how-to-get-the-creation-modification-time-of-a-file-from-the-command-lin
    birth=$(stat -f "%SB" "$Output")
    birthstring=($birth)
    new_birth="${birthstring[3]}-${month_dict[${birthstring[0]}]}-${birthstring[1]}"
    if [[ "$old_birth" != "$new_birth" ]]; then
        old_birth=$new_birth        
        echo "$new_birth"
        current_dir="/Users/jan-emmofeenders/Pictures/raw_image/$new_birth"
        mkdir "$current_dir"
    fi
done