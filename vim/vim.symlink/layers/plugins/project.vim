" Plugins {{{
    Plug 'scrooloose/nerdtree'
" }}}

" Configuration {{{
    let g:NERDTreeShowHidden = 1
" }}}

" Mappings {{{
  let g:lmap.p = {
    \ 'name': 'Project',
    \ 'r': ['NERDTreeFind', 'Reveal current file'],
    \ 't': ['NERDTreeToggle', 'Tree']
    \ }
" }}}
