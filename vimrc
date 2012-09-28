filetype plugin indent on " load file type plugin/indent settings
syntax on                 " use syntax highlighting

set noerrorbells          " no beeping
set novisualbell          " no flashing
set nowrap                " don't wrap long lines
set showmatch             " show matching brackets

" strings to use instead of unprintable characters in 'list' mode
set listchars=tab:>-,eol:$,trail:.,extends:\

set incsearch             " show search results as you type
set smartcase             " ignore case

set wildmode=list:longest " bash-like tab completion

set autoindent            " keep indent of previous line
set expandtab             " use spaces instead of tabs
set shiftwidth=4          " indent 4 spaces
set smarttab              " pressing tab indents according to shiftwidth

" q instantly quits vim and discards changes
map q :q!<CR>
