#!/bin/bash

fichier="customer_profiles.csv"
IFS=$'\n'  
oldIFS=$IFS
ligne_parcouru=0

for ligne in $(<$fichier)
do
    if [ "$ligne_parcouru" -eq 0 ]; then
        ((ligne_parcouru++))
        continue
    else
        readarray -d , -t line_array <<< "$line"
        echo $readarray
        for (( i=0; i < ${#line_array[@]}; i++))
        do
            if [ -z "${line_array[i]}"]; then
                echo $ligne
                sed "${ligne_parcouru}d"
            fi
        done
        ((ligne_parcouru++))
    fi
done