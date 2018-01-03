"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UNCATEGORIZED

set nocompatible

syntax off

" Dialogue instead of fail
set confirm

" Visualbell instead of beep
" set visualbell
" set t_vb=

" Enable mouse (all modes)
" set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TIMING

set timeoutlen=1000
set ttimeoutlen=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING

" Find in file
set ignorecase
set smartcase
set incsearch
set wrapscan
set nohlsearch

" Find files
set path+=**
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WINDOW DECORATION

set showcmd
set showmode
set laststatus=2

" Command window height
set cmdheight=2

" Line numbers
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING
"

" Tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Indent
set autoindent
set smartindent
"filetype indent plugin on

" Margin
set textwidth=80

""""""""""""""""""""""""""""""""""""""""""""""
" MAIN DISPLAY

" Show context around current line
set scrolloff=1

" Soft-wrapping whole words
set wrap
set linebreak

" Spelling
"set spell
"set spelllang=nl

" Colors
set t_co=256
set cursorline
hi LineNr ctermfg=247 ctermbg=white
hi Normal ctermfg=black ctermbg=white
hi Visual ctermfg=black ctermbg=252
hi CursorLineNr ctermfg=black ctermbg=white
hi! link CursorLine Normal
hi! link Directory Normal
hi! link Ignore Normal
hi! link MatchParen Visual
hi! link MoreMsg Normal
hi! link NonText LineNr
hi! link Question Normal
hi! link Search Visual
hi! link StatusLine LineNr
hi! link TabLine LineNr
hi! link TabLineFill LineNr
hi! link Title Normal
hi! link WarningMsg Normal
