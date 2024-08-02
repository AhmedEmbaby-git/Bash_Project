#!/bin/bash
echo -e "Enter the Name of the Database: \c"
#use -e to make entry on the same line.
read -r db_name
#use -r to don`t allow backslash to escape any character.
if [ -d ./DataBases/$db_name  ] 
        then
        echo "Database $db_name is already exist !!!!!"
        ./main.sh

elif [[ $db_name =~ ^[a-zA-Z] ]] && [[ $db_name = +([a-zA-Z0-9_]) ]] 
        then
        mkdir ./DataBases/$db_name
        echo "===================================="
        echo "Database $db_name is created successfully!!!!"
        echo "===================================="
        ./main.sh
else
        echo "==================="
        echo "Invalid DB Name !!!"  
        echo "==================="
        ./main.sh
fi              
