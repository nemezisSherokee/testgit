
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

function git_add_messge {

	if [ $# -gt 0 ]
	then
	  git add $1
	  echo "added $1 successfully"
	else
	   git add *
	   echo "added all filles successfully"
	fi
}

alias add="git_add_messge"