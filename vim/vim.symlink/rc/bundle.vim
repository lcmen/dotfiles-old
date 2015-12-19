set nocompatible

filetype on
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'gmarik/Vundle.vim'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'rking/ag.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'tpope/vim-projectionist'
Plugin 'scrooloose/nerdtree'
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
Plugin 'skalnik/vim-vroom'
Plugin 'elzr/vim-json'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -f -l -U --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:ctrlp_working_path_mode = 0

" Increase default CtrlP settings
let g:ctrlp_max_files = 0
let g:ctrlp_max_height = 20
let g:ctrlp_max_depth = 40

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme="luna"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Vim vroom
let g:vroom_use_bundle_exec = 1

" Use Vim dispatch in Tmux
if InTmuxSession()
  let g:vroom_use_dispatch = 1
end

" Vim projectionist:
"   - tiapp.xml - Titanium project configuration
let g:projectionist_heuristics = {
  \   "tiapp.xml": {
  \     "app/config.json": {
  \       "alternate": "app/config.example.json",
  \       "type": "config"
  \     },
  \     "app/config.example.json": {
  \       "alternate": "app/config.json",
  \       "type": "econfig"
  \     },
  \     "app/controllers/*.js": {
  \       "alternate": "app/views/{}.xml",
  \       "type": "controller"
  \     },
  \     "app/lib/*.js": {
  \       "type": "lib"
  \     },
  \     "app/models/*.js": {
  \       "type": "model"
  \     },
  \     "app/styles/*.tss": {
  \       "alternate": "app/views/{}.xml",
  \       "type": "style"
  \     },
  \     "app/views/*.xml": {
  \       "alternate": "app/controllers/{}.js",
  \       "type": "view"
  \     }
  \   }
  \ }
