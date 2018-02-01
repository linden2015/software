" Colors
colorscheme industry
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  set t_ut=
endif

" Errors
set confirm

" Footer
set showcmd
set timeoutlen=1000 ttimeoutlen=0

" Searching files
set path+=**
set wildmenu

" Searching inside the current file
set smartcase
set wrapscan

" Sidebar
set number

" Whitespace
set list
set listchars=trail:~,tab:>-
set shiftwidth=4 softtabstop=4 autoindent expandtab

" Wrapping
set linebreak
