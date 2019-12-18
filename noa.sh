#!/bin/bash
function helpNofication
{
    echo "No argument supplied"

}

echo 'Please enter number of files'
read number
for ((i = 1; i <= number; i++))
do
if (  $# < 1 );
then
    exit 1

fi

daydate=$(date '+%d%m%Y')
        read -p 'NAME: ' NAME
        echo
        echo create newfile : $NAME
	helpNofication

    NAME="${daydate}_${NAME}.txt"
    dir=/tmp/test/${NAME}

	if [ -d ${NAME} ]
	then
        mkdir ${dir}
        fi

    echo "Creating file: ${NAME}"

	if [ -z "$NAME" ]
	 then
 	 helpNofication
	else
        echo "create $NAME"

	fi
    touch /tmp/test/${NAME}

        if [ $? -eq 0 ]
        then
                echo "Successfully created file"
        else
                echo "Could not create file" >&2
        fi
    # echo $(cat /dev/urandom | tr -dc 'A-Z' | fold -w 3 | head -n 1)$date > "File${i}.txt"
done

