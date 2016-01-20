# submit_newbler_Echino.sh
# Maria Stalteri
# 15/12/2011

# submit a job to run newbler on cluster

#$ -N newbler3_Echino_flpar1run3
        
# Request all output be placed in the current working directory
#$ -cwd
        
# Re-direct the 'standard out' and 'standard error' 
# messages to a single file
#$ -o newbler3_echino_flpar1run3_out.txt
#$ -j y
        
# Request a bash shell
#$ -S /bin/bash
        
# Send email notification when job (b)egins, (e)nds, or is (a)borted
# Having #$ at the beginning means it is "on"; 
# having ##$ (or anything else) means it is "off".
#$ -M email_address
#$ -m bea

# You will often need to source (read) your .bash_profile
. ~/.bash_profile
        
# Run your command(s):
runAssembly  ~/flowsim_results/Echino_taenia/Echino_par1/Echino_taenia_run3_par1.sff              
 
