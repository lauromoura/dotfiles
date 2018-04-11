function git-branch-order
	git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'
end

