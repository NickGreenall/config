sauce () {
	if [ $# -eq 0 ]
	then
		source "${HOME}/Envs/misc/bin/activate"
	else
		if [[ -f "${HOME}/Envs/${1}/bin/activate" ]]
		then
			source "${HOME}/Envs/${1}/bin/activate"
		else
			source "${HOME}/Envs/${1}.sh"
		fi
	fi
}

list_envs () {
	ls ${HOME}/Envs/
}

clean_merged() {
	for branch in $(git branch --merged -l | grep -v "^.*develop.*$"); do
		git branch -d
	done
}
