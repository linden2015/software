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
PRINT_ROWS='BRANCH|AUTHOR|UPDATED|MERGED INTO|RECENT ANCESTOR\n'
for i in $REMOTE_BRANCHES; do
    AUTHOR=$(git log -1 --format=format:'%cn' $i)
    DATE=$(git log -1 --format=format:'%cr' $i)
    if [ $(git branch --remotes --contains $i | grep origin/master | wc -l) -gt 0 ]; then
        MERGED_INTO=$(git describe --contains $i 2> /dev/null)
    else
        MERGED_INTO='N/A'
    fi
    RECENT_ANCESTOR=$(git merge-base origin/master $i | xargs git describe --exact-match 2> /dev/null)
    PRINT_ROWS+="$i|$AUTHOR|$DATE|$MERGED_INTO|$RECENT_ANCESTOR\n"
done
echo -e $PRINT_ROWS | column -t -s '|'
