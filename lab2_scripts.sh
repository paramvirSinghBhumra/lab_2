#!/bin/bash
# Authors : Paramvir Singh Bhumra
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regular expression: "
read REGEX
echo "Enter a filename: "
read FILENAME

grep -E $REGEX $FILENAME

#-----hardcodded grep commands-----
#Number of phones
grep -Ec "[0-9]{3}\-[0-9]{3}\-[0-9]{4}" regex_practice.txt
#Number of emails
grep -Ec "[@][A-Za-z]*\.[A-Za-z]*" regex_practice.txt
#"303" area code, store results in "email_results.txt"
grep -E "^303\-[0-9]{3}\-[0-9]{4}$" regex_practice.txt > phone_results.txt
#List all of the emails from geocities.com
grep -E "@geocities.com" regex_practice.txt > email_results.txt
#List all the lines that match a command-line regex > "command_results.txt"
echo $REGEX >> command_results.txt
#----------------------------------
