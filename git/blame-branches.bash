#!/bin/bash

REMOTE_BRANCHES=$(git branch --remotes | egrep -v 'origin/(master$|test/|acceptance/|release/)' | awk '{print($1)}')
PRINT_ROWS=''
for i in $REMOTE_BRANCHES; do
    if [ $(git branch --remotes --contains $i | grep origin/master | wc -l) -gt 0 ]; then
        IS_MERGED='Yes'
    else
        IS_MERGED='No'
    fi
    AUTHOR=$(git log -1 --format=format:'%cn')
    DATE=$(git log -1 --format=format:'%cr')
    PRINT_ROWS+="$i|$AUTHOR|$DATE|$IS_MERGED\n"
done
echo -e $PRINT_ROWS | column --table --separator='|' --table-columns Branch,Author,When,'Is merged'
