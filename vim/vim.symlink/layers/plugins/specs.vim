" Plugins {{{
  Plug 'janko-m/vim-test'
" }}}

" Mappings {{{
  let g:lmap.s = {
    \ 'name': 'Specs',
    \ 'a': ['TestSuite', 'Test all'],
    \ 'f': ['TestFile', 'Test file'],
    \ 'l': ['TestLast', 'Test last'],
    \ 's': ['TestNearest', 'Test nearest']
    \ }
" }}}
