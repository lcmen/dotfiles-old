" Plugins {{{
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'hecal3/vim-leader-guide'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'vim-scripts/ZoomWin'
" }}}

" Functions {{{
  function! StripTrailingWhiteSpace()
    " skip for markdown
    if &filetype =~ 'markdown' || &filetype =~ 'slim'
      return
    endif
    %s/\s\+$//e
  endfunction
" }}}

" Configuration {{{
  " Leader key {{{
    let mapleader=" "
    let g:lmap = {}
  " }}}

  " Misc {{{
    set backspace=indent,eol,start      " Make backspace work correctly
    set clipboard=unnamed               " Use system clipboard
    set noswapfile                      " Disable swap
    set scrolloff=5                     " Start scrolling 5 lines away from margin
    set sidescrolloff=15                " Start scrolling 15 lines away from side margin
    set spell                           " Spell checking on
    set splitbelow                      " Split below
    set splitright                      " Split on the right side
    set timeoutlen=300
    set ttimeoutlen=0
  " }}}

  " Whitespace, tabs & spaces {{{
    set nowrap
    set linebreak
    set textwidth=120
    set wrapmargin=0

    set expandtab                     " Indent with spaces
    set softtabstop=2                 " Number of spaces per <tab> when inserting
    set shiftwidth=2                  " Number of spaces per <tab> when indenting
    set tabstop=4                     " Number of spaces <tab> counts for
  " }}}

  " Backups {{{
    set nobackup
    set nowritebackup
    set undofile
    set undolevels=1000               " Maximum number of changes that can be undone
    set undoreload=10000              " Maximum number lines to save for undo on a buffer reload
    set undodir=$HOME/.vim/tmp/undo   " Set persistent undo directory
  " }}}

  augroup hooks
    " Trim white spaces on save
    autocmd BufWritePre * call StripTrailingWhiteSpace()
  augroup END

  augroup paste
    " Leave paste mode on exit
    autocmd InsertLeave * set nopaste
  augroup END
" }}}

" Mappings {{{
  " Leader guide
  nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
  vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

  " Move more senibly when line wrapping enabled
  nmap k gk
  nmap j gj

  " Disable ex mode
  nnoremap Q <nop>

  nnoremap Y y$

  " If you forgot about sudo before opening the file
  cmap w!! w !sudo tee % >/dev/null

  " Resize windows with the arrow keys
  nnoremap <up>    <C-W>+
  nnoremap <down>  <C-W>-
  nnoremap <left>  3<C-W>>
  nnoremap <right> 3<C-W><

  " Switch between windows with CTRL
  nnoremap <C-j> <C-W><C-J>
  nnoremap <C-k> <C-W><C-K>
  nnoremap <C-l> <C-W><C-L>
  nnoremap <C-h> <C-W><C-H>
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l

  " Exit terminal-mode with ESC
  tnoremap <Esc> <C-\><C-n>

  " Moving block of codes
  vnoremap < <gv
  vnoremap > >gv

  " Tabs
  nnoremap [g gT
  nnoremap ]g gt
" }}}
