" vim: foldlevel=0 foldmethod=marker

" Plugins {{{
  call plug#begin('~/.nvim/plugged')

  " Git {{{
    Plug 'airblade/vim-gitgutter'             " Display git marks on the side
    Plug 'junegunn/gv.vim'                    " Browse Git commits nicely
    Plug 'tpope/vim-fugitive'                 " Git commands
  " }}}

  " Utils {{{
    Plug 'christoomey/vim-tmux-navigator'     " Tmux navigation helper
    Plug 'ctrlpvim/ctrlp.vim'                 " Fuzzy find search
    Plug 'tacahiroy/ctrlp-funky'              " Fuzzy method search
    Plug 'pbrisbin/vim-mkdir'                 " Create dirs on the fly
    Plug 'scrooloose/nerdtree'                " Files tree
    Plug 'schickling/vim-bufonly'             " Close all buffers at once
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
    Plug 'tpope/vim-commentary'               " Comment / uncomment
    Plug 'tpope/vim-surround'                 " It's all about surrounding
    Plug 'tpope/vim-unimpaired'               " Make next / prev binding consistent
    Plug 'vim-airline/vim-airline'            " Useful info
    Plug 'vim-airline/vim-airline-themes'     " with nice themes
  " }}}

  " UI {{{
    Plug 'hecal3/vim-leader-guide'            " Leader guide
    Plug 'nathanaelkane/vim-indent-guides'    " Show indents
    Plug 'ryanoasis/vim-devicons'             " Nice file icons
  " }}}

  " Language & syntax specific {{{
    Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
    Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
    Plug 'neomake/neomake'
    Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
    Plug 'vim-scripts/vim-coffee-script', { 'for': 'coffee' }
    Plug 'vim-scripts/vim-emblem', { 'for': 'emblem' }
  " }}}

  call plug#end()

  " Load all functions from functions directory
  runtime! functions/*.vim
" }}}

" Settings {{{
  " Display
  set t_Co=256
  " set ttyfast
  " set lazyredraw
  colorscheme zenburn

  " Indentation
  set expandtab                     " Indent with spaces
  set softtabstop=2                 " Number of spaces per <tab> when inserting
  set shiftwidth=2                  " Number of spaces per <tab> when indenting
  set tabstop=4                     " Number of spaces <tab> counts for

  " White spaces
  set nowrap
  set linebreak
  set textwidth=0
  set wrapmargin=0

  " Editor
  set scrolloff=5                     " Start scrolling 5 lines away from margin
  set sidescrolloff=15                " Start scrolling 15 lines away from side margin
  set clipboard=unnamed               " Yield to system clipboard
  set foldlevel=40                    " Open 40 folds by default
  set spell                           " Spell checking on

  " UI
  set number                        " Show line numbers
  set relativenumber                " Use relative line numbers
  set listchars=tab:▸\              " Char representing a tab
  set listchars+=extends:❯          " Char representing an extending line
  set listchars+=nbsp:␣             " Non breaking space
  set listchars+=precedes:❮         " Char representing an extending line in the other direction
  set listchars+=trail:·            " Show trailing spaces as dots

  " Search
  let hlstate=0
  set ignorecase
  set smartcase

  " Splits
  set splitright                    " Split on the right side
  set splitbelow                    " Split below

  " Backups
  set backup
  set undofile
  set undolevels=1000                 " Maximum number of changes that can be undone
  set undoreload=10000                " Maximum number lines to save for undo on a buffer reload
  set backupdir=$HOME/.config/nvim/tmp/backup " Set backup directory
  set directory=$HOME/.config/nvim/tmp/swap   " Set swap directory
  set undodir=$HOME/.config/nvim/tmp/undo     " Set persistent undo directory

" }}}

" Behaviour {{{
  " Ctags
  set tags+=gem.tags

  " Leave paste mode on exit
  autocmd InsertLeave * set nopaste

  " Trim white spaces on save
  autocmd BufWritePre * call StripTrailingWhiteSpace()

  " Check syntax after save
  autocmd! BufWritePost * Neomake

  " Use the silver searcher if available
  if executable('ag')
    " Define Ag command to search for the provided text and open a quickfix
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    " Use ag as grep method
    set grepprg=ag\ --nogroup\ --nocolor
  endif
" }}}

" Syntax {{{

  " Settings {{{
    autocmd Filetype gitcommit setlocal spell textwidth=72
    autocmd FileType python setl softtabstop=4 shiftwidth=4
    autocmd FileType xml setl softtabstop=2 shiftwidth=2
  " }}}

  " Set based on extension {{{
    autocmd BufNewFile,BufReadPost *.jst set syntax=html
    autocmd BufNewFile,BufReadPost *.md,*.mdown,*.mdwn,*.mmd set filetype=markdown
    autocmd BufNewFile,BufReadPost *.tss set filetype=javascript " Titanium Alloy Style Files
    autocmd BufNewFile,BufReadPost Rakefile,Vagrantfile set filetype=ruby
  " }}}

" }}}

" Mappings {{{
  " Enable hlserch on start
  nnoremap / :set hlsearch<cr>/

  " Space as leader key
  let mapleader="\<Space>"

  " Fix c-h
  nmap <BS> <C-W>h

  " Map ESC on terminal
  tnoremap <Esc> <C-\><C-n>

  " Window shortcuts {{{
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
  " }}}

  " ex mode can be annoying sometimes
  nnoremap Q <nop>

  " Move more sensibly when line wrapping enabled {{{
    nmap k gk
    nmap j gj
  " }}}

  " Moving block of codes more sensibly {{{
    vnoremap < <gv
    vnoremap > >gv
  " }}}

  " Resize windows with the arrow keys {{{
    nnoremap <up>    <C-W>+
    nnoremap <down>  <C-W>-
    nnoremap <left>  3<C-W>>
    nnoremap <right> 3<C-W><
  " }}}

  " Layers {{{
    let g:lmap =  {}

    " Buffers {{{
      let g:lmap.b = {
                      \'name': 'Buffers',
                      \'b': ['CtrlPBuffer', 'All buffers'],
                      \'d': ['bdelete', 'Close buffer'],
                      \'D': ['call DeleteAllBuffers()', 'Close all buffers'],
                      \'n': ['bnext', 'Next buffer'],
                      \'o': ['BufOnly', 'Close other buffers'],
                      \'p': ['bprevious', 'Prev buffer']
                      \}
    " }}}

    " Files {{{
      let g:lmap.f = {
                      \'name': 'Files',
                      \'t': ['NERDTreeToggle', 'Tree view']
                      \}
    " }}}

    " Git {{{
      let g:lmap.g = {
                      \'name': 'Git',
                      \'s': ['Gstatus', 'status'],
                      \'c': ['Gcommit', 'commit'],
                      \'p': ['Gpush', 'push'],
                      \'P': ['Gpull', 'pull'],
                      \'l': ['GV', 'log'],
                      \'L': ['GV!', 'log current file']
                      \}
    " }}}
    " Terminal {{{
      let g:lmap[','] = ['split term://bash', 'Terminal']
    " }}}

    " Meta {{{
      let g:lmap[';'] = {
                         \'name': 'Meta',
                         \'i': ['PlugInstall', 'Install plugins'],
                         \'c': ['PlugClean', 'Clean plugins'],
                         \'u': ['PlugUpdate', 'Update plugins'],
                         \'U': ['PlugUpgrade', 'Upgrade manager']
                         \}
    " }}}

    " Project {{{
      let g:lmap['p'] = {
                         \'name': 'Project',
                         \'f': ['CtrlP', 'Find files'],
                         \'F': ['NERDTreeFind', 'Find current file'],
                         \'t': ['NERDTreeToggle', 'Tree view']
                         \}
    " }}}

    " Toggles {{{
      let g:lmap.t = {
                      \'name': 'Toggle',
                      \'a': ['call deoplete#toggle()', 'Toggle autocomplete'],
                      \'c': ['set list!', 'Special characters'],
                      \'g': ['GitGutterToggle', 'GitGutter'],
                      \'i': ['IndentGuidesToggle', 'Indent guides'],
                      \'h': ['set hlsearch!', 'Highlight search'],
                      \'l': ['set relativenumber!', 'Line numbers'],
                      \'t': ['NERDTreeToggle', 'Tree view'],
                      \'s': ['setlocal invspell', 'Spelling']
                      \}
    " }}}
  " }}}

" }}}

" Plugin settings {{{

  " Airline {{{
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
  " }}}

  " CtrlP {{{
    " Alt-P (disable `Use option as meta key`)
    nnoremap Ļ :CtrlPFunky<CR>
    nnoremap ĻĻ :execute 'CtrlPFunky ' . expand('<cword>')<CR>

    " Use ag for listing the files
    let g:ctrlp_user_command = 'ag %s -f -l -U --hidden --nocolor -g ""'
    " No need for caching when ag is used
    let g:ctrlp_use_caching = 0
    " Always open files in new buffers
    let g:ctrlp_switch_buffer = 0
    " Respect current working directory during Vim session
    let g:ctrlp_working_path_mode = 0
  " }}}

  " Deoplete {{{
    " Close preview window after complition
    autocmd CompleteDone * pclose!

    let deoplete#tag#cache_limit_size = 5000000
    " let g:deoplete#enable_at_startup = 1
    let g:deoplete#sources = {}
    let g:deoplete#sources._ = ['buffer', 'tag']
    let g:deoplete#sources.elixir = ['alchemist', 'buffer']
    let g:deoplete#sources.ruby = ['omni', 'buffer', 'tag']
  " }}}

  " GitGutter {{{
    let g:gitgutter_map_keys = 0
  " }}}

  " Indent Guides {{{
    let g:indent_guides_default_mapping = 0
    let g:indent_guides_enable_on_vim_startup = 0
    let g:indent_guides_auto_colors = 1
    let g:indent_guides_guide_size = 2

    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=238
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=blue  ctermbg=239
  " }}}

  " Leader guide {{{
    call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
    nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
    vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
  " }}}

  " Neomake {{{
    let g:neomake_javascript_enabled_makers = ['jshint']
    let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']
    let g:neomake_sh_enabled_makers = ['shellcheck']
    let g:neomake_yaml_enabled_makers = ['yamllint']
  " }}}

  " NERDTree {{{
    let NERDTreeMouseMode=2
    let NERDTreeShowBookmarks=1
    let NERDTreeShowHidden=1
  " }}}

  " Open NERDTree and Startify on startup
  autocmd VimEnter *
            \   if !argc()
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

  " Vim-Ruby {{{
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_classes_in_global = 1
    let g:rubycomplete_load_gemfile = 1
    " let g:rubycomplete_rails = 1
  " }}}
" }}}
