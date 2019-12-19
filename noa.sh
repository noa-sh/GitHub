#!/bin/bash
function helpNofication
{
    echo "$# arguments"

}

daydate=$(date '+%d%m%Y')
DIRNAME="/tmp/test"

# Check number of arguments
if [ "$#" -lt 1 ];then
       	echo "Need at least 1 file name"
	exit 1
fi
if [ -d ${DIRNAME} ]; then
	echo "Directory ${DIRNAME} exists"
else
        mkdir ${DIRNAME}
fi

for FILENAME in "$@"
do
#chech if file name alredy exist
if [ -f "${DIRNAME}/${FILENAME}" ]; then
    echo "${DIRNAME}/${FILENAME} alredy exist"
else 
    echo "${DIRNAME}/${FILENAME} does not exist"
#creating file
	 CreatedFile="${FILENAME}_${daydate}.txt"
	 echo "Creating file: ${CreatedFile}"
    	touch ${DIRNAME}/${FILENAME}
        if [ $? -eq 0 ]
        then
                echo "Successfully created file"
        else
                echo "Could not create file" >&2
        fi
fi
done
