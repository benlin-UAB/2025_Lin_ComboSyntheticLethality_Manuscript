#!/bin/bash

## Script written by Benjamin Lin (benlin@uab.edu) on 9-16-22
## Benjamin Lin 
## Miller Lab

## conda env RNA

# TODO file contains a list of all the FASTQ files
TODO="starTodo.txt"

## Programs
MYBIN="~/.conda/envs/RNA/bin/STAR"


### Get file info
printf "SLURM ARRAY TASK ID: %s\n" $SLURM_ARRAY_TASK_ID
R1=`awk -v line=$SLURM_ARRAY_TASK_ID '{if (NR == line) print $0}' $TODO`

cmd="$MYBIN --genomeDir $GenomeDir \
        --readFilesIn $IN/$R1 \
        --outFileNamePrefix $OUT/$R1. \
        --outSAMunmapped Within \
        --outSAMtype BAM Unsorted SortedByCoordinate \
        --quantMode TranscriptomeSAM \
        --runThreadN 4 \
        --readFilesCommand zcat"

echo "Executing STAR alignment"
echo $cmd
eval $cmd

