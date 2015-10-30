set nocompatible

filetype on
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'rking/ag.vim'
Plugin 'craigemery/vim-autotag'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'jgdavey/tslime.vim'

Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec', { 'v': 'b0d30e2' }
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'

Plugin 'jgdavey/vim-blockle'
Plugin 'tpope/vim-endwise'

call vundle#end()
filetype plugin indent on

let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l -U --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:rspec_runner = "os_x_iterm"

" Make sure vim rspec works in macvim, console and tmux
if !has("gui") && InTmuxSession()
  let g:rspec_command = "Dispatch bundle exec rspec {spec}"
elseif has("gui")
  let g:rspec_command = "bundle exec rspec {spec}"
else
  let g:rspec_command = "!bundle exec rspec {spec}"
end
