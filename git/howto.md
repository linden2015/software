# Add configuration

## Repository level

`git config --local user.email "<email>"`

## User level

`git config --global user.name "<name>"`

# Delete untracked files

`git clean -d --force`

* `--interactive`
* `--dry-run`

Options:

* `--dry-run`
* `-d`: include directories

# Track file changes over time

`git log --patch --unified=0 --follow -- <file>`
