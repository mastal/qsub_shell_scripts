#!/bin/bash -l

# submit_bwa_index.sh
# Maria Stalteri
# 28/10/2014


# 28/10/2014 modified to run bwa index on Legion

# request a bash shell
#$ -S /bin/bash

# request wallclock time (1h)
#$ -l h_rt=1:0:0

# request RAM per process (16 Gb)
#$ -l mem=24G

# request threads per process (8)
#$ -l thr=8

# request TMPDIR space
#$ -l tmpfs=50G

# skip request for parallel environment

# job name
#$ -N  bwa_index_gg4

# project that the job runs under 
# output of 'groups' command 
# commented out because this was changed 09/2014                                                                                                                                                                                                                                                         
##$ -P account_name

# set working dir (on Scratch space)
#$ -wd /home/username/Scratch/output

# automate transfer of output to Scratch from $TEMPDIR
#Local2Scratch

# work must be done in $TMPDIR
cd $TMPDIR

# run bwa index
/home/username/maria_software/BWA/bwa/bwa index  -p gg4_ens77_toplevel  \
/home/username/maria_genomic_data/Gallus_gallus.Galgal4.dna.toplevel_Ens77.fa
 







