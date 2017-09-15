" Plugins {{{
  Plug 'ctrlpvim/ctrlp.vim'
" }}}

" Configuration {{{
  set hlsearch                      " Highlight matches
  set incsearch                     " Search as characters are entered
  set ignorecase                    " Ignore case when searching
  set smartcase                     " unless there is a capital letter in the query

  " Use the silver searcher if available
  if executable('ag')
    " Define Ag command to search for the provided text and open a quickfix
    if !exists(":Ag")
      command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    endif
    " Use ag as grep method
    set grepprg=ag\ --nogroup\ --nocolor
  endif
" }}}

" Mappings {{{
  " Enable hlserch on start
  nnoremap / :set hlsearch<cr>/

  " Search with Ag
  let g:lmap.a = ['call feedkeys(":Ag ")', 'AG']

  " Use ag for listing the files
  let g:ctrlp_user_command = 'ag %s -f -l -U --hidden --nocolor -g ""'
  let g:ctrlp_use_caching = 0
  " Always open files in new buffers
  let g:ctrlp_switch_buffer = 0
  " Respect current working directory during Vim session
  let g:ctrlp_working_path_mode = 0
" }}}
