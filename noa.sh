#!/bin/bash
function helpNofication
{
    echo "$# arguments"

}

daydate=$(date '+%d%m%Y')
DIRNAME="/tmp/test"
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
	 CreatedFile="${FILENAME}_${daydate}.txt"
	 echo "Creating file: ${CreatedFile}"
    	touch ${DIRNAME}/${FILENAME}
        if [ $? -eq 0 ]
        then
                echo "Successfully created file"
        else
                echo "Could not create file" >&2
        fi

done
