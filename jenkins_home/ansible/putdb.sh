#!/bin/bash

# su - postgres
# psql

psql -U postgres -h postgres -d peoples
\c peoples

counter=0
echo $counter
while [ $counter -lt 50 ];
do
    let counter=counter+1

    name=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
    lastname=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
    age=$(shuf -i 20-25 -n 1)

    insert into register (id,name,lastname) values ($counter,$name,$lastname);
    echo "$countert , $name $lastname was correctly imported"
done
