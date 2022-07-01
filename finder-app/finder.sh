#!/bin/sh
if [ $# != 2 ]
then 	
    echo "Expect two parameters\n"
    echo "The first parameter should be a directory"
    echo "The second parameter should be a string you want to search"
    exit 1
fi

if [ ! -d $1 ]  
then
	echo "Directory $1 not exist\n"
        exit 1
fi 

files_num=$(ls -lR $1 | grep "^-" | wc -l )

matching=$(grep -rnsI $2 $1 | wc -l)

echo "The number of files are $files_num and the number of matching lines are $matching"

