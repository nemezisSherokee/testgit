active_branch="$(git branch | grep \* | cut -d ' ' -f2)"

function git_pull_origin_master {

	if [ $# -gt 0 ]
	then
	  git pull origin $1
	   echo "pull from branch $1"
	else
	   #active_branch="$(git branch | grep \* | cut -d ' ' -f2)"
	   git pull origin $active_branch
	   echo "pull from branch $active_branch"
	fi
}

alias pull="git_pull_origin_master"

function git_push_origin_master {
	
	if [ $# -gt 0 ]
	then
	   git push origin $1
	   echo "push to branch $1"
	else
	   #active_branch="$(git branch | grep \* | cut -d ' ' -f2)"
	   git push origin $active_branch
	   echo "push to branch $active_branch"
	fi
	 
}

alias push="git_push_origin_master"

function git_commit_messge {
	test -n "$1" && {
	 git commit -m "$1"
	 echo "committed with message $1"
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

echo "end"
