#!/bin/bash

count = 0

while [ $count -lt 50 ];
do
    let count = count + 1

    name = nl people.txt | grep -w 1 | awk '{print $2}' | awk -F ',' '{print $1}'
    lastname = nl people.txt | grep -w 1 | awk '{print $2}' | awk -F ',' '{print $2}'

    echo "$name, $lastname"
done
