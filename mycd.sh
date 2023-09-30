#! /bin/bash

# if the target directory is 
# already on a git folder 
# or will contain a git 
# folder, then source the 
# bashrc file, to rebuild
# the prompt so as the 
# branch name and the status
# gets added to the bash prompt 
# (this will make the performance
# better, rather then just resourcing
# bashrc for every cd call)

# NOTE: down below we use builtin cd
# since using cd will cause a recursive
# loop, where cd calls the alias that 
# calls cd again and again.

is_current_dir_git_folder=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [ $is_current_dir_git_folder ] || [ -d "$1/.git/" ]; then

	# if already in git, or will be in git, resource bashrc
	builtin cd $1 && source ~/.bashrc
else
	# otherwise, just cd to it since it is a normal directory
	builtin cd $1
fi 


