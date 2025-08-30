#!/bin/bash

file="usuarios.csv"
firstLine=0
newHead="phone number"
newcol="5555-5555"

while IFS=, read -r col1 col2 col3 col4
    do
    if [ $firstLine == 1 ]
    then
        printf '%s, %s, %s, %s, %s\n' "$col1" "$col2" "$col3" "$col4" "$newcol" >> TelUsuarios.csv
    else
        firstLine=1
        printf '%s, %s, %s, %s, %s\n' "$col1" "$col2" "$col3" "$col4" "$newHead" >> TelUsuarios.csv
    fi

done < "$file"
