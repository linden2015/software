# Autocomplete a word

Insert mode:

* Get suggestions: CTRL+N
* Next: CTRL+N
* Previous: CTRL+P
* Cancel: CTRL+E

# Change the spelling language

* `:set spelllang=nl`

# Change the window layout

Steps:

* Go to a window
* Force it to a side with CTRL + H/J/K/L (note: uppercase)

# Get spelling suggestions

* Move the cursor to the word
* `z=`

Source: [Using Spell Checking in Vim](https://www.linux.com/learn/using-spell-checking-vim)

# Join two lines

Steps:

* Select both lines in visual mode
* Shift + J

# Jump to next misspelled word

* Forwards: `]s`
* Backwards: `[s`

# Paste in insert mode

* `CTRL-R {register}`

Source: <https://stackoverflow.com/a/2861909/8315377>

# Multiple commands at once in normal mode

`:s/a/b/g | s/c/d/g`

# Record actions

* begin: q<alphanum>
* end: q
* apply: @<alphanum>

# Resize a window

## Equal sizes for all in both directions

`Ctrl+W =`

## Specific size

`:resize <window-line-height>`

## Maximum size

`:resize`

# Rename files to a standard

## Letters to lowercase
s/\(\w\)/\L\1/g

## Replace spaces with dashes
s/ /-/g

## Remove special characters
s/[^a-z1-9-.]//g

## Remove duplicate dashes
s/-\+/-/g

## Serially applied
s/\(\w\)/\L\1/ge | s/ /-/ge | s/[^a-z1-9-.]//ge | s/-\+/-/ge
