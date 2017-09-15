" Plugins {{{
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/gv.vim'
  Plug 'tpope/vim-fugitive'
" }}}

" Functions {{{
  if !exists("*PushToBranch")
    function! PushToBranch()
      exe ":Gwrite"
      let branch = system("git rev-parse --abbrev-ref HEAD")
      exe ":Git push origin " . branch
    endfunction
  endif

  if !exists(":PushToBranch")
    command! PushToBranch call PushToBranch()
  endif
" }}}

" Configuration {{{
  augroup git
    autocmd Filetype gitcommit setl spell textwidth=72
  augroup END

  " Disable default gutter mappings
  let g:gitgutter_map_keys = 0
" }}}

" Mappings {{{
  let g:lmap.g = {
    \ 'name': 'Git',
    \ 'c': ['Gcommit', 'Commit'],
    \ 'd': ['Gdiff', 'Diff'],
    \ 'l': ['GV', 'Log'],
    \ 'L': ['GV!', 'Log current file'],
    \ 'p': ['PushToBranch', 'Push to current branch'],
    \ 's': ['GStatus', 'Status']
    \ }
" }}}
