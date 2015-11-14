set nocompatible

filetype on
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'gmarik/Vundle.vim'

" Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'rking/ag.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-vinegar'
Plugin 'christoomey/vim-tmux-navigator'

" Utilities
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'airblade/vim-gitgutter'

" UI
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

" Language & syntax specific
Plugin 'jgdavey/vim-blockle'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec', { 'v': 'b0d30e2' }
Plugin 'elzr/vim-json'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -f -l -U --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:rspec_runner = "os_x_iterm"

" Make sure vim rspec works in macvim, console and tmux
if !has("gui") && InTmuxSession()
  let g:rspec_command = "Dispatch bin/rspec {spec}"
elseif has("gui")
  let g:rspec_command = "bin/rspec {spec}"
else
  let g:rspec_command = "!bin/rspec {spec}"
end
