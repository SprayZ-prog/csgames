#!/bin/bash

fichier="customer_profiles.csv"
oldIFS=$IFS
ligne_parcouru=0

cat $fichier | while read ligne 
do
    if [ "$ligne_parcouru" -eq 0 ]; then
        ((ligne_parcouru++))
        continue
    else
        IFS="," read -ra line_array <<< "$ligne"
        for (( i=0; i < ${#line_array[@]}; i++))
        do
            echo "${line_array[i]}"
            if [ -z "${line_array[i]}" ]; then
                echo "$ligne"
                sed "${ligne_parcouru}d"
            fi
        done
        ((ligne_parcouru++))
    fi
done