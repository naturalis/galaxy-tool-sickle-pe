#!/bin/bash

outlocation=$(mktemp -d /data/files/XXXXXX)
SCRIPTDIR=$(dirname "$(readlink -f "$0")")

# sanity check
printf "Conda env: $CONDA_DEFAULT_ENV\n"
printf "Outlocation: $outlocation\n"
printf "Python version: $(python --version |  awk '{print $2}')\n"
printf "Biopython version: $(conda list | egrep biopython | awk '{print $2}')\n"
printf "Pandas version: $(conda list | egrep sickle-trim | awk '{print $2}')\n"
printf "Unzip version: $(unzip -v | head -n1 | awk '{print $2}')\n"
printf "Bash version: ${BASH_VERSION}\n"
printf "SCRIPTDIR: $SCRIPTDIR\n\n"

python $SCRIPTDIR"/sickle_wrapper.py" -i $1 -of $outlocation -t $4 -q $5 -l $6
mv $outlocation"/log.log" $3
mv $outlocation"/trimmed_files.zip" $2
rm -rf $outlocation 
