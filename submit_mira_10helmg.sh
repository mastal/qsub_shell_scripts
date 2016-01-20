# submit_mira_10helm.sh
# Maria Stalteri
# 15/11/2011

# submit a job to run mira on the cluster

#$ -N mira_run2_10helm
        
# Request all output be placed in the current working directory
#$ -cwd
        
# Re-direct the 'standard out' and 'standard error' 
# messages to a single file
#$ -o mira_run2_10helm_out.txt
#$ -j y
        
# Request a bash shell
#$ -S /bin/bash
        
# Send email notification when job (b)egins, (e)nds, or is (a)borted
# Having #$ at the beginning means it is "on"; 
# having ##$ (or anything else) means it is "off".
#$ -M  email_address
#$ -m bea

# You will often need to source (read) your .bash_profile
. ~/.bash_profile
        
# Run your command(s):
mira --project=mira_run2_10helm_sim2run1  --job=denovo,genome,accurate,454   >&log_assembly.txt
