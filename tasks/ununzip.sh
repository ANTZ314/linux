#!/bin/bash

# DESCRIPTION:
# Un-Do an unzipped folder but keep the original zip file

# USAGE:
# chmod +x ununzip.sh 
# ./ununzip.sh ZIPPEDFile.zip
# Note: Edit the "ZIPPEDFile" file name in here
COUNT=0                                   
PURGE=CLEAR                               
ZIPPEDFile=$1                            # THIS IS YOUR file.zip, THE ARGUMENT
PURGE=(`unzip -t ZIPPEDFile | awk '{print $2}' |  xargs echo`)
COUNT=${#PURGE[@]}                        # HOW MUCH STUFF GOT UNZIPPED?
echo "total items "$COUNT
echo -e "item at 0 is ${PURGE[0]}"        # WE DON'T DELETE THE ORIGINAL ZIP FILE
while [ "$COUNT" -gt 0 ]; do
echo -e "deleting ${PURGE[${COUNT}]}"
rm -r "${PURGE[${COUNT}]}"                # COMMENT THIS LINE FOR A DRY RUN
COUNT=$[ $COUNT - 1 ]
done
exit 0