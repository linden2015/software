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

# Jump to next misspelled word

* Forwards: `]s`
* Backwards: `[s`

# Multiple commands at once in normal mode

`:s/a/b/g | s/c/d/g`

# Resize a window

## Equal sizes for all in both directions

`Ctrl+W =`

## Specific size

`:resize <window-line-height>`

## Maximum size

`:resize`
