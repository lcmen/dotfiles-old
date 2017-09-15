" Plugins {{{
  Plug 'fatih/vim-go', { 'for': 'go', 'do': 'GoInstallBinaries' }
  Plug 'sebdah/vim-delve', { 'for': 'go' }
" }}}

" Configuration {{{
  augroup go
    autocmd FileType go setl softtabstop=4 shiftwidth=4
  augroup END

  if !exists('g:projectionist_heuristics')
    let g:projectionist_heuristics = {}
  endif
  let g:projectionist_heuristics['*.go'] = {
      \ '*.go': { 'alternate': '{}_test.go', 'type': 'source' },
      \ '*_test.go': { 'alternate': '{}.go', 'type': 'test' }
      \ }
" }}}

" Mappings {{{
  au FileType go let g:lmap.m = {
    \ 'name': '+mode',
    \ 'r': ['<Plug>(go-run)', 'Run'],
    \ 'b': ['<Plug>(go-build)', 'Build'],
    \ 'c': ['<Plug>(go-coverage)', 'Coverage'],
    \ 'd': ['DlvDebug', 'Debug'],
    \ 'D': ['DlvTest', 'Debug tests'],
    \ 'P': ['DlvToggleBreakpoint', 'Toggle breakpoint']
    \ }
" }}}
