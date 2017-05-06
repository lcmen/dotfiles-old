" vim:foldmethod=marker

set nocompatible

" Plugins {{{
  " Managed by vim-plug (https://github.com/junegunn/vim-plug)
  " Commands:
  "   - PlugInstall - install plugins
  "   - PlugUpdate - update plugins
  "   - PlugClean - Remove unused directories
  "   - PlugUpgrade - upgrade manager
  call plug#begin('~/.local/share/nvim/plugged')

    Plug 'tpope/vim-unimpaired'

    Plug 'ap/vim-buftabline'
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'jszakmeister/vim-togglecursor'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-scripts/ZoomWin'

    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    Plug 'tmhedberg/matchit'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'

    Plug 'janko-m/vim-test'
    Plug 'jgdavey/vim-blockle', { 'for': 'ruby' }
    Plug 'jgdavey/vim-weefactor', { 'for': 'ruby' }
    Plug 'keith/rspec.vim', { 'for': 'ruby' }
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-rails', { 'for': 'ruby' }
    Plug 'w0rp/ale'

    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'kassio/neoterm'
    Plug 'scrooloose/nerdtree'
    Plug 'schickling/vim-bufonly'
    Plug 'tacahiroy/ctrlp-funky'

  call plug#end()

  runtime! functions/*.vim
" }}}

" Misc {{{
  set scrolloff=5                     " Start scrolling 5 lines away from margin
  set sidescrolloff=15                " Start scrolling 15 lines away from side margin
  set spell                           " Spell checking on
  set clipboard=unnamed               " Use system clipboard
  set noswapfile                      " Disable swap
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

" UI {{{
  set t_Co=256
  set background=dark
  colorscheme nord
  set colorcolumn=81
  set synmaxcol=200                 " Colorize syntax up to 200 characters
  set cursorline                    " Highlight current line
  set number                        " Show line numbers
  set relativenumber                " Use relative line numbers
  set showcmd                       " Show the current command in the f:qaooter
  set ruler                         " Show line and col numbers in footer
  set modeline                      " Read modelines from files
  set laststatus=2                  " Show status line (filename, etc.) always in all windows
  set list                          " Show invisible characters
  set listchars=tab:▸\ ,eol:¬,nbsp:␣,trail:·
  set splitright                    " Split on the right side
  set splitbelow                    " Split below
" }}}

" Search {{{
  set hlsearch                      " Highlight matches
  set incsearch                     " Search as characters are entered
  set ignorecase                    " Ignore case when searching
  set smartcase                     " unless there is a capital letter in the query

  " Use the silver searcher if available
  if executable('ag')
    " Define Ag command to search for the provided text and open a quickfix
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    " Use ag as grep method
    set grepprg=ag\ --nogroup\ --nocolor
  endif
" }}}

" Backups {{{
  set nobackup
  set nowritebackup
  set undofile
  set undolevels=1000               " Maximum number of changes that can be undone
  set undoreload=10000              " Maximum number lines to save for undo on a buffer reload
  set undodir=$HOME/.vim/tmp/undo   " Set persistent undo directory
" }}}

" Autogroups {{{
  " Leave paste mode on exit
  autocmd InsertLeave * set nopaste

  " Trim white spaces on save
  autocmd BufWritePre * call StripTrailingWhiteSpace()

  " Syntax
  autocmd Filetype gitcommit setl spell textwidth=72
  autocmd Filetype markdown setl spell colorcolumn=0 wrap linebreak
  autocmd FileType python setl softtabstop=4 shiftwidth=4
  autocmd FileType xml setl softtabstop=2 shiftwidth=2

  autocmd BufNewFile,BufReadPost *.jst set syntax=html
  autocmd BufNewFile,BufReadPost *.md,*.mdown,*.mdwn,*.mmd set filetype=markdown
  autocmd BufNewFile,BufReadPost Rakefile,Vagrantfile set filetype=ruby
" }}}

" Mappings {{{
  " Space as leader key
  let mapleader=" "

  " Disable ex mode
  nnoremap Q <nop>

  " Move more senibly when line wrapping enabled
  nmap k gk
  nmap j gj

  " Resize windows with the arrow keys
  nnoremap <up>    <C-W>+
  nnoremap <down>  <C-W>-
  nnoremap <left>  3<C-W>>
  nnoremap <right> 3<C-W><

  " Switch between windows with CTRL
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>

  " Moving block of codes
  vnoremap < <gv
  vnoremap > >gv

  " Enable hlserch on start
  nnoremap / :set hlsearch<cr>/

  " Search
  nnoremap <leader>a :Ag<space>

  " Exit terminal
  tnoremap <Esc> <C-\><C-n>

  map <C-6> <C-^>
  nnoremap Y y$

  " If you forgot about sudo before opening the file
  cmap w!! w !sudo tee % >/dev/null

  " REPL {{{
    nnoremap <silent> <leader>;; :TREPLSendLine<CR>
    vnoremap <silent> <leader>;; :TREPLSendSelection<CR>
    nnoremap <silent> <leader>;c :call neoterm#close()<cr>
    nnoremap <silent> <leader>;f :TREPLSendFile<CR>
    nnoremap <silent> <leader>;k :call neoterm#kill()<cr>
    nnoremap <silent> <leader>;l :call neoterm#clear()<cr>
  " }}}

  " Buffers {{{
    nnoremap <leader>bc :bd<CR>
    nnoremap <leader>bl :ls<CR>
    nnoremap <leader>bo :BufOnly<CR>
  " }}}

  " Ale {{{
    " Switch between errors with space-k / space-j
    nnoremap <silent> <leader>k <Plug>(ale_previous_wrap)
    nnoremap <silent> <leader>j <Plug>(ale_next_wrap)
  " }}}

  " Buffers {{{
    nnoremap <silent> <leader>1 :buffer 1<CR>
    nnoremap <silent> <leader>2 :buffer 2<CR>
    nnoremap <silent> <leader>3 :buffer 3<CR>
    nnoremap <silent> <leader>4 :buffer 4<CR>
    nnoremap <silent> <leader>5 :buffer 5<CR>
    nnoremap <silent> <leader>6 :buffer 6<CR>
    nnoremap <silent> <leader>7 :buffer 7<CR>
    nnoremap <silent> <leader>8 :buffer 8<CR>
    nnoremap <silent> <leader>9 :buffer 9<CR>
  " }}}

  " CtrlP {{{
    nnoremap <leader>p :CtrlPFunky<CR>
    nnoremap <leader>P :execute 'CtrlPFunky ' . expand('<cword>')<CR>
  " }}}

  " Git {{{
    nnoremap <leader>gc :Gcommit<CR>
    nnoremap <leader>gl :call GitLog()<CR>
    nnoremap <leader>gp :call PushToCurrentBranch()<CR>
    nnoremap <leader>gs :Gstatus<CR>
  " }}}

  " Refactoring {{{
    " Ruby Blocks
    let g:blockle_mapping = '<leader>rb'
    " Replace `:symbol =>` with `symbol:`
    map <leader>r: :NotRocket<CR>
    " Rspec let
    map <leader>rl <Plug>ExtractRspecLet
    " Ruby struct to class
    map <leader>rs <Plug>ConvertStructToClass
  " }}}

  " Specs {{{
    nmap <silent> <leader>st :TestNearest<CR>
    nmap <silent> <leader>sf :TestFile<CR>
    nmap <silent> <leader>sa :TestSuite<CR>
    nmap <silent> <leader>ss :TestLast<CR>
    nmap <silent> <leader>sv :TestVisit<CR>
  " }}}

  " Toggles {{{
    " Toggle highlight search
    nnoremap <leader>th :set hlsearch!<CR>
    " Toggle NERDTree
    nnoremap <leader>tt :NERDTreeToggle<CR>
    " Toggle NERDTree and find the file
    nnoremap <leader>tT :NERDTreeFind<CR>
    " Toggle spell check
    nnoremap <leader>ts :setlocal invspell<CR>
  " }}}

  " Tools {{{
    " Regenerate ctags
    nnoremap <leader>c :MagictagsInitTagsFile<CR>
    " Reload vimrc
    nnoremap <leader>. :source ~/.vimrc<CR>
  " }}}
" }}}

" Plugin settings {{{
  " buftabline {{{
    let g:buftabline_show = 2
    let g:buftabline_numbers = 1
  "}}}

  " CtrlP {{{
    " Use ag for listing the files
    let g:ctrlp_user_command = 'ag %s -f -l -U --hidden --nocolor -g ""'
    let g:ctrlp_use_caching = 0
    " Always open files in new buffers
    let g:ctrlp_switch_buffer = 0
    " Respect current working directory during Vim session
    let g:ctrlp_working_path_mode = 0
  " }}}

  " GitGutter {{{
    let g:gitgutter_map_keys = 0
  " }}}

  " Lightline {{{
    let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
  " }}}

  " NERDTree {{{
    let NERDTreeMouseMode=2
    let NERDTreeShowBookmarks=1
    let NERDTreeShowHidden=1
  " }}}

  " Projctionist {{{
    if !exists('g:rails_projections')
      let g:rails_projections = {}
    endif

    call extend(g:rails_projections, {
        \  "app/presenters/*.rb": {
        \     "command": "presenter",
        \     "test": "spec/presenter/{}_spec.rb",
        \     "alternate": "spec/presenter/{}_spec.rb",
        \     "template": "class {camelcase|capitalize|colons}\nend" }
        \ }, 'keep')

    if !exists('g:rails_gem_projections')
      let g:rails_gem_projections = {}
    endif

    call extend(g:rails_gem_projections, {
          \ "active_model_serializers": {
          \   "app/serializers/*_serializer.rb": {
          \     "command": "serializer",
          \     "template": "class {camelcase|capitalize|colons}Serializer < ActiveModel::Serializer\nend",
          \     "affinity": "model"}},
          \ "rspec-core": {
          \    "spec/support/*.rb": {
          \      "command": "support"}},
          \ "carrierwave": {
          \   "app/uploaders/*_uploader.rb": {
          \     "command": "uploader",
          \     "template": "class {camelcase|capitalize|colons}Uploader < CarrierWave::Uploader::Base\nend"}},
          \ "draper": {
          \   "app/decorators/*_decorator.rb": {
          \     "command": "decorator",
          \     "affinity": "model",
          \     "template": "class {camelcase|capitalize|colons}Decorator < ApplicationDecorator\nend"}},
          \ "fabrication": {
          \   "spec/fabricators/*_fabricator.rb": {
          \     "command": ["fabricator", "factory"],
          \     "alternate": "app/models/{}.rb",
          \     "related": "db/schema.rb#{pluralize}",
          \     "test": "spec/models/{}_spec.rb",
          \     "template": "Fabricator :{} do\nend",
          \     "affinity": "model"}},
          \ "factory_girl": {
          \   "spec/factories/*.rb": {
          \     "command": "factory",
          \     "alternate": "app/models/{}.rb",
          \     "related": "db/schema.rb#{pluralize}",
          \     "test": "spec/models/{}_spec.rb",
          \     "template": "FactoryGirl.define do\n  factory :{} do\n  end\nend",
          \     "affinity": "model"},
          \   "spec/factories.rb": {
          \      "command": "factory"},
          \   "test/factories.rb": {
          \      "command": "factory"}},
          \ "requests": {
          \   "spec/requests/*.rb": {
          \       "command": "request",
          \       "alternate": "app/controllers/{}.rb",
          \     }}
          \ }, 'keep')
  " }}}
" }}}
