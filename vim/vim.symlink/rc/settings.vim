" General settings
set encoding=utf-8
set nocompatible
set noswapfile
syntax enable

" Display settings
set t_Co=256
set guioptions=aAce
set laststatus=2
set showcmd
colorscheme dracula

" Editor settings
set backspace=indent,eol,start    " Allow backspacing over everything in inset mode
set scrolloff=5                   " Start scrolling 5 lines away from margin
set sidescrolloff=15              " Start scrolling 15 lines away from side margin
set sidescroll=1
set clipboard=unnamed             " Yield to system clipboard

" Whitespace settings
set nowrap                        " Wrap visually
set linebreak                     " Disable line break
set nolist                        " in the middle of words
set textwidth=0                   " Don't insert line breaks automatically
set wrapmargin=0

" Indentation settings
set autoindent                    " Indent automatically
set expandtab                     " Indent with spaces
set softtabstop=2                 " Number of spaces per <tab> when inserting
set shiftwidth=2                  " Number of spaces per <tab> when indenting
set tabstop=4                     " Number of spaces <tab> counts for

" UI settings
set number                        " Show line numbers
set relativenumber                " Use relative line numbers
set listchars=tab:▸\              " Char representing a tab
set listchars+=extends:❯          " Char representing an extending line
set listchars+=nbsp:␣             " Non breaking space
set listchars+=precedes:❮         " Char representing an extending line in the other direction
set listchars+=trail:·            " Show trailing spaces as dots

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Ctags
set tags=rtags,gem.tags

" Leave paste mode on exit
autocmd InsertLeave * set nopaste

" Trim white spaces
autocmd BufWritePre * call StripTrailingWhiteSpace()
