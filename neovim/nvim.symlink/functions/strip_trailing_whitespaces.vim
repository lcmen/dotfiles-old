function! StripTrailingWhiteSpace()
  " skip for markdown
  if &filetype =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfunction
