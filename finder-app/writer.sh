#!/bin/sh
if [ $# != 2 ]
then 	
    echo "Expect two parameters\n"
    echo "The first parameter should be a absolute file path"
    echo "The second parameter should be a string you want to write to the file"
    exit 1
fi

touch $1

if [ $? -ne 0 ]  
then
	echo "Cannot create file $1"
        exit 1
fi 

echo $2 > $1
