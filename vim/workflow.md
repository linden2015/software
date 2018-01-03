# Navigation

## Words

* `w` next word
* `W` next word incl special chars
* `b` previous word
* `B` previous word incl special chars

## Sentences

* `(` to start of sentence
* `)` to start of next sentence
* `{` to start of paragraph
* `}` to start of next paragraph

## Specific line

* `:<linenumber>` go to <linenumber>

## Search

### Inside current document

* `/<phrase>` forward search
* `?<phrase>` backward search
* `n` next occurance
* `N` previous occurance
* Ctrl+o move to previous point
* Ctrl+i move to next point

### Files

* `:e <pattern>`; can use wildcards and TAB ('**/workflow*')

* `:r! find . | grep <pattern>`; load results into a buffer; `gf` open file under cursor

### Inside files

* `:vimgrep <pattern> <location>`; location can be `**/*.txt`
    * `:copen` to open results in quickfix window
    * `:cclose` to close window
    * `:cn` jump to next result
    * `:cN` previous

## Scrolling

* Ctrl+y up one line
* Ctrl+e down one line

## Document

* `gg` to start of document
* `G' to end of document

----

# Substitution

* `s` remove character and enters insert mode
* `<count>s` removes characters and enters insert mode
* `S` removes line and enters insert mode

# Yanking and pasting
    
1. Change mode to `visual` with `v` OR `V` for line-mode
2. Move cursor around to set selection
3. `y` for yank
4. `:reg` to display registers
5. `p` to paste first register (`P` pastes before the cursor, otherwise after); `"1p` to paste register number 1; `"14p` to paste reg1 4 times

# Copy line down

1. `yy` to yank a whole line
2. `p` to paste to the following line

# Copy inner word(s)

* `yi"` to yank inside quotes
* `yiw` to yank current word
* `yiW` to yank current word including special chars

# Text search 

1. `/<pattern>` with optional `\c` to ignore case
2. `n` jump to next occurence, `N` to jump to previous
3. `:noh` to turn off highlight of current search

# Open another file

1. `:e ./<type + TAB>`

# Open file explorer to open a file

1. `:Explore` or `:e.`

# Search for a file and open it using CtrlP plugin

1. Start CtrlP with `:CtrlP (<path>)` or Ctrl+P
2. Type pattern

[github.io](http://ctrlpvim.github.io/ctrlp.vim/)

# List recent files with CtrlP plugin

1. `:CtrlPMRU`

# Make selection and delete

1. Change to visual mode either `v` or `V`
2. Move cursor to set selection
3. `d` to delete

# Undo/redo changes

1. `u` to undo
2. Ctrl+R to redo

# Create new file

1. `:e <name>`

# Working with multiple files

1. `:ls` list open buffers
2. `:b<n>` move to buffer n or `:bn` next buffer `:bp` previous buffer or `:b <filename-part+TAB>`

# Go to a line and set line to screen orientation

1. `:<lineNumbeR>`
2. `zt` for set as top, `zz` for middle, `zb' for bottom

# Saving files

1. `:update` will only save on changes, `:w` will write in either case

# Working with tabs

1. `:tabnew (<filename>)` opens a new tab; without a filename creates an unnamed tab
2. Switch between
    * Ctrl + PgUp/PgDn
    * `gt` or `gT`
    * `<tabnum>gt`

# Close file without closing Vim

1. `:bd`

# List colorschemes

1. `:colorscheme ` + TAB

# Show current colorscheme

1. `echo g:colors_name`

# Move view pane up or down

1. Ctrl+E down one line, Ctrl+Y up one line

# Jump words

1. `w` next word, `W` next word (special chars incl), `b` previous words, `B` prev word incl

# Replace section

1. `ci"`, `ci'`, `ci<`, etc, removes text between and enters insert mode

# Moving between windows

1. Ctrl w
2. Arrow key or `w` to toggle

# Moving inside a file

* `gg` move to top
* `G` move to bottom

# Using the explorer

* `:Explore` or `:e.` to open the explorer
    * `R` to rename; can also be used to move files between directories
    * `d` to create directory
    * `%` to create file
    * `-` to move up 
* `:cd <directory>` to change working directory
* `:cd %:h` change directory to current opened file

# Spellchecking

* [reddit.com/r/vim](https://www.reddit.com/r/vim/comments/2qgcfu/dutch_spell_checking_in_vim/)

# Count the number of words in the document

1. Make a selection in visual mode
2. `g` followed by Ctrl+g

# Indent

* `>>` and `<<`; single line
* mark lines in visual mode & `>`; multiple lines

# Repeat last command

* `.`
