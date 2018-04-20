#!/bin/bash

# BLAME GIT BRANCHES
#
# This script lists each remote feature branch, who authored the last commit, when it was last
# updated, and if it's merged into master. It was created to make it easier to clean up branches
# that are no longer needed, so that it becomes insightful which feature branches are still in
# progress.
#
# The script has no running options.

REMOTE_BRANCHES=$(git branch --remotes | egrep -v 'origin/(master$|test/|acceptance/|release/)' | awk '{print($1)}')
PRINT_ROWS='Branch|Author|Updated|Is Merged\n'
for i in $REMOTE_BRANCHES; do
    if [ $(git branch --remotes --contains $i | grep origin/master | wc -l) -gt 0 ]; then
        IS_MERGED='Yes'
    else
        IS_MERGED='No'
    fi
    AUTHOR=$(git log -1 --format=format:'%cn' $i)
    DATE=$(git log -1 --format=format:'%cr' $i)
    PRINT_ROWS+="$i|$AUTHOR|$DATE|$IS_MERGED\n"
done
echo -e $PRINT_ROWS | column -t -s '|'
