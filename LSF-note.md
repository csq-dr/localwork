## LSF notes

+ `module` commands in linux server
	
	+ list available modules: `module avai`
	+ list loaded modules: `module list`

+ Install python modules in linux terminal: `pip3 install --user <module_name>`
	+ Load python3: `module load python3/3.5.0`
	+ Re-install `pip` on server: 
		`curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`
		`python get-pip.py --user "pip<9"`

+ LSF scheduler commands:
	
	+ Check queues available for a user: `bqueues -u <user_name>`
	+ Run a batch job with `bjobs`
	  + `bjobs -l <job_number>` get the detail of `<job number>` 
	  + `bjobs -p` check pending jobs and job pending reason(s)
	  + Arguments for `bsub` inside shell script
	  + `#BSUB -N` send email notification
	  + `#BSUB -R span[hosts=1]` set number of hosts to use, "1" means all cores specified by `#BSUB -n` are from 1 host
	  + `#BSUB -R select[model=Opteron848]` select only AMD nodes
	
+ Add modules to server start file / Load modules when logging into UMass HPC:

  + cluster loading file: `~/.bashrc` (file content as follow pic)

  + add "module load ..." between ./etc/bashrc and fi

    ```shell
    # .bashrc
    ## Set umask for security
    #umask 077
    # Source global definitions
    if [ -f /etc/bashrc ]; then
    	. /etc/bashrc
    fi
    
    # User specific aliases and functions
    module load R/3.5.2_gcc8.1.0  
    ```

### Reference

[lsf scheduler manual](http://www.umassrc.org/doc/lsf/)