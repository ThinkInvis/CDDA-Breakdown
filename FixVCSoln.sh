#!/bin/bash

# Get a carriage return into `cr` -- there *has* to be a better way to do this
cr=`echo $'\n.'`
cr=${cr%.}

echo -e "This automated batch file will completely redownload your Visual Studio solution file from the remote Git repository,\nin order to resolve caching errors caused by file additions/deletions between branches.\n[...] Checking Git repository for changes..."

if [[ `git status --porcelain` ]]; then
	echo -e "\033[1;31m|X| Your Git repository has uncommitted changes; please revert, commit, or stash them before continuing.\n\033[1;33m|!| This operation will still be unsafe if the solution is currently open in Visual Studio.\n\033[0m|!| It will also cause a long wait for VS to rebuild caches next time you open the solution,\n|!| and it may overwrite some local Git-ignored changes (e.g. to working directory)."
else
	read -n1 -p "|V| Your Git branch looks clean.""$cr""\033[1;33m|!| This operation will still be unsafe if the solution is currently open in Visual Studio.""$cr""\033[0m|!| It will also cause a long wait for VS to rebuild caches next time you open the solution,""$cr""|!| and it may overwrite some local Git-ignored changes (e.g. to working directory).""$cr""Proceed? (y/n): " UIN
	if [[ $UIN == "y" || $UIN == "Y" ]]; then
		echo -e "\n[...] Deleting and re-pulling the MSVC solution folder..."
		rm -r msvc-full-features
		git reset --hard
		echo "|V| Done!"
	fi
fi

read -n1 -p "$cr""Press any key to continue or CTRL-C to abort"