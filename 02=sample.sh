#! /bin/bash

#echo and print are the command to print something on the screen

echo hello world

# echo to print multiple lines
# syntax: echo -e "line1/n line2"
 echo -e "hello,\n\nwelcome to devops training"

 # paragraph printing and using \t for tab space

 echo -e "\tThe extension is needed as people are increasingly roaming in public,
            especially in Tokyo and Osaka,when they should be doing the opposite,
            and it’s feared that lifting the emergency would cause an instant rebound in infections,
            Economy Revitalization Minister Yasutoshi Nishimura said."
# print the text in color
# echo -e  "\e[COLORCODEmMessage[0m\e"
#
## COLORS        CODE
## RED           31
## GREEN         32
## YELLOW        33
## BLUE          34
## MAGENTA       35
## CYAN          36

echo -e "\e[31mhello in red color"
echo normal text with no color
echo -e "\e[33mhello in yellow color"