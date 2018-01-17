# Copy to general clipboard without a newline

`echo 'a' | xargs echo -n | xclip -selection clipboard`
