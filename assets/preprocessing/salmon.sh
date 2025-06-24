#!/bin/bash

## Script written by Benjamin Lin (benlin@uab.edu) on 9-19-22
## Benjamin Lin 
## Miller Lab

## conda env RNA

# TODO file contains a list of all the star aligned Bam files (--quantMode TranscriptomeSAM)
TODO="salmon.txt"

# Getting file names
printf "SLURM ARRAY TASK ID: %s\n" $SLURM_ARRAY_TASK_ID
FILE=`awk -v line=$SLURM_ARRAY_TASK_ID '{if (NR == line) print $0}' $TODO`
CURRFILE=${FILE%%.fastq.gz*}

MYBIN="~/.conda/envs/RNA/bin/salmon"

cmd="$MYBIN quant -t $ref \
        -l SR \
        -a $IN/$FILE \
        -o $OUT/$CURRFILE.salmon"

echo "Runing salmon quant"
echo $cmd
eval $cmd



