"          _
"   __   _(_)_ __ ___  _ __ ___
"   \ \ / / | '_ ` _ \| '__/ __|
"  _ \ V /| | | | | | | | | (__
" (_) \_/ |_|_| |_| |_|_|  \___|
"
"---------------------------------------------------------------------
" Basics
"---------------------------------------------------------------------
filetype plugin indent on " load file type plugin/indent settings
syntax on                 " use syntax highlighting

set noerrorbells          " no beeping
set novisualbell          " no flashing
set nowrap                " don't wrap long lines
set showmatch             " show matching brackets

" strings to use instead of unprintable characters in 'list' mode
set listchars=tab:>-,eol:$,trail:·,extends:»

set incsearch             " show search results as you type
set smartcase             " ignore case

set wildmode=list:longest " bash-like tab completion

set autoindent            " keep indent of previous line
set expandtab             " use spaces instead of tabs
set shiftwidth=4          " indent 4 spaces
set smarttab              " pressing tab indents according to shiftwidth

"---------------------------------------------------------------------
" Key bindings
"---------------------------------------------------------------------
map q :q<CR>
nnoremap <F2> :set number!<CR>
nnoremap <F3> :set list!<CR>
nnoremap <F4> :set hlsearch!<CR>
nnoremap <F5> :set spell!<CR>

"---------------------------------------------------------------------
" Abbreviations
"---------------------------------------------------------------------
iab xdate <C-R>=strftime("%Y-%m-%d")<CR>
iab xtime <C-R>=strftime("%H:%M:%S")<CR>

"---------------------------------------------------------------------
" GNU C indent style
"---------------------------------------------------------------------
function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction
au FileType c,cpp call GnuIndent()

