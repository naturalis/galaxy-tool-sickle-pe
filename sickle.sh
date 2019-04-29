#!/bin/bash
#outlocation=$(mktemp -d /media/GalaxyData/database/files/XXXXXX)
outlocation=$(mktemp -d /home/galaxy/galaxy/database/XXXXXX)

SCRIPTDIR=$(dirname "$(readlink -f "$0")")

python $SCRIPTDIR"/sickle_wrapper.py" -i $1 -of $outlocation -t $4 -q $5 -l $6
mv $outlocation"/log.log" $3
mv $outlocation"/trimmed_files.zip" $2
rm -rf $outlocation 
