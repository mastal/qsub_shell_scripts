#!/bin/bash -l

# submit_bwa_mem_v2g.sh
# Maria Stalteri
# 28/10/2014


# 28/10/2014 modified to run bwa mem on Legion

# request a bash shell
#$ -S /bin/bash

# request wallclock time (1h)
#$ -l h_rt=3:0:0

# request RAM per process (16 Gb)
#$ -l mem=24G

# request threads per process (8)
#$ -l thr=8

# request TMPDIR space
#$ -l tmpfs=50G


# job name
#$ -N  bwa_mem_7D_R12P_v2


# set working dir (on Scratch space)
#$ -wd /home/user/Scratch/output

# automate transfer of output to Scratch from $TEMPDIR
#Local2Scratch

# work must be done in $TMPDIR
cd $TMPDIR

# run bwa mem
/home/user/maria_software/BWA/bwa/bwa mem -M -t 8 \
/home/user/maria_genomic_data/gg4_ens77_toplevel \
/home/user/Scratch/7D_TAGCTT_L006_R1P_trimv2.fastq  \
/home/user/Scratch/7D_TAGCTT_L006_R2P_trimv2.fastq > \
bwa_mem_7D_TAGCTT_trimv2_R1R2P.sam
 





 

