#!/usr/bin/env bash

#==========================================================================
# Set the following variables
#==========================================================================

DIRECTORY=$1

FILE=$2

reset=`tput setaf 7`
green=`tput setaf 2`
#==========================================================================

if [ -z "$1"] && [ -z "$2"]; then
     echo "${green}Usage [./script] [directory] [filename]"
    exit 1
fi;

echo "${green}Execute MailParser"
echo "#=============================="

for file in $DIRECTORY;
    do sed -i '.json' s/[^:"]*@[^",]*//g "$FILE"
done

