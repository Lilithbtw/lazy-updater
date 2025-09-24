#!/usr/bin/env bash

choice_func() {
	while true; do
		read -p "Do you want to update? [Yes/No] " choice
		case ${choice,,} in
			y | yes)
				sleep 1
				printf "Updating"
				for i in {1..3};do
					printf "."
					sleep 0.3
				done
				printf "\n"
				yay -Syyu
				break
				;;
			n | no)
		                printf "Exiting"
		                for i in {1..3}; do
		                	printf "."
					sleep 0.3
				done
				printf "\n"
				break
				;;
			*)
				printf "Input Not valid, try again\n"
				choice_func
				;;	
		esac
	done
}


printf 'Waiting for program to load'
for i in {1..40}; do
	printf "."
	sleep 0.2
done
printf '\n'

choice_func

sleep 2
