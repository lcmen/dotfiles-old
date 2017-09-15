" Plugins {{{
  Plug 'jbranchaud/vim-bdubs'
" }}}

" Mappings {{{
  let g:lmap.b = {
    \ 'name': 'Buffers',
    \ 'c': ['bd', 'Close'],
    \ 'l': ['ls', 'List'],
    \ 'o': ['call feedkeys(":BD")', 'Close others'],
    \ 'O': ['BD', 'Close all others'],
    \ }
" }}}
