
function git_push_origin_master {

    test -n $1 && { 
	git push origin $1
	}
	 
}

alias push="git_push_origin_master"

function git_commit_messge {

	test -n $1 && {
	  echo "$1"
	 git commit -m "$1"
	}
}

alias commit="git_commit_messge"