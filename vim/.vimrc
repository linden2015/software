colorscheme industry
set number
set shiftwidth=4
set softtabstop=4
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  set t_ut=
endif
set autoindent
set smartindent
set linebreak
set showcmd
set timeoutlen=1000 ttimeoutlen=0
