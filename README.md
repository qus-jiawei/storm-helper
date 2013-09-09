storm-helper
============

this project include some useful sh file or java programme.

  1. storm setup sh
  		
		Prepare:
		the user must be a sudoer and sudo without passwd
		java is 1.6
		python is 2.6+
		hint:Before you setup storm you should have an sh to scp file to all host.
		
		Doing:
		the storm will steup in ~/storm
		
  2. storm manage sh
  		
		Prepare:
		add Below to .bash_profile to all host;
		
		if [ -f ~/.storm_profile ]; then
		  . ~/.storm_profile
		fi

		cp .storm_profile to all host
		
		
		Doing:
		
		
		
  3. storm java programme

