" Plugins {{{
  Plug 'arcticicestudio/nord-vim'
  Plug 'ap/vim-buftabline'
  Plug 'itchyny/lightline.vim'
  Plug 'jszakmeister/vim-togglecursor'
  Plug 'ryanoasis/vim-devicons'
" }}}

" Configuration {{{
  set t_Co=256
  set colorcolumn=79
  set cursorline                    " Highlight current line
  set laststatus=2                  " Show status line (filename, etc.) always in all windows
  set list                          " Show invisible characters
  set listchars=tab:▸\ ,eol:¬,trail:·
  set modeline                      " Read modelines from files
  set number                        " Show line numbers
  set relativenumber                " Use relative line numbers
  set ruler                         " Show line and col numbers in footer
  set showcmd                       " Show the current command in the footer

  let g:buftabline_show = 2
  let g:buftabline_numbers = 1

  let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'component_function': {
    \   'filetype': 'StatusLineFiletype',
    \   'fileformat': 'StatusLineFileformat',
    \ }
    \ }
" }}}
