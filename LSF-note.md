## module

+ list available modules: `module avai`

+ list loaded modules: `module list`

## LSF notes

+ check queues available for a user: `bqueues -u <user_name>`

+ Install python modules: `pip3 install --user <module_name>`
	+ Load python3: `module load python3/3.5.0`
	+ Re-install `pip` on server: 
		`curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`
		`python get-pip.py --user "pip<9"`

+ bjobs
	- `bjobs -l <job_number>` get the detail of <job number>

+ bsub (inside shell script)
	- `#BSUB -N` send email notification
	- `#BSUB -R span[hosts=1]` set number of hosts to use, "1" means all cores specified by `#BSUB -n` are from 1 host