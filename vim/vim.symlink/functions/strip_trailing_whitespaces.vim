function! StripTrailingWhiteSpace()
  " skip for markdown
  if &filetype =~ 'markdown' || &filetype =~ 'slim'
    return
  endif
  %s/\s\+$//e
endfunction
