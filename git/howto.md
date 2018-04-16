# Add configuration

## Repository level

`git config --local user.email "<email>"`

## User level

`git config --global user.name "<name>"`

# Cleanup branches

* List merged branches: `git branch --remotes --merged origin/<branch>`
* Remove remote branch: `git push origin --delete <branch>`
* Remove stale remote tracking branches: `git remote prune origin [--dry-run]`
* List local branches with pruned remote: `git branch -vv | grep gone`
* Safe delete a local branch: `git checkout master`, `git branch --delete <branch>`
* Unsafe delete a local branch: `git branch --delete --force <branch>`

# Delete untracked files

`git clean -d --force`

* `--interactive`
* `--dry-run`

Options:

* `--dry-run`
* `-d`: include directories

# Track file changes over time

`git log --patch --unified=0 --follow -- <file>`

# Unstage a file

* `git reset -- <paths>`

# Untrack a file

* `git rm --cached -- <file>`
