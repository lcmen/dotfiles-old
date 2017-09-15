" Configuration {{{
augroup markdown
  autocmd Filetype markdown setl spell colorcolumn=0 wrap linebreak
  autocmd BufNewFile,BufReadPost *.md,*.mdown,*.mdwn,*.mmd set filetype=markdown
augroup END
" }}}
