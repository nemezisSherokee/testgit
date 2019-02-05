
function git_push_origin_master {

    test -n $1 && { 
	git push origin $1
	}
	 
}

alias push="git_push_origin_master"