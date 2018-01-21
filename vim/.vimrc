" Colors
colorscheme industry
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  set t_ut=
endif

" Footer
set showcmd
set timeoutlen=1000 ttimeoutlen=0

" Sidebar
set number

" Whitespace
set shiftwidth=4 softtabstop=4 autoindent expandtab
set listchars=trail:~,tab:>-
set list

" Wrapping
set linebreak
