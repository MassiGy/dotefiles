#!/bin/bash


for file in "${@}" ; do 

	# if -rf flag is given, then the list of 
	# files to remove start at $2..$#
	if [ "$file" = "-rf" ]; then 
		continue
	fi 
	
	# otherwise, move every otherthing
	# to the trash bin directory.
	mv $file ~/.local/share/Trash/files/
	echo "$file -> ~/.local/share/Trash/files/"
	
done 

