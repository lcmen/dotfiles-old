function! BufferDelete()
  if &modified
    echohl ErrorMsg
    echomsg "No write since last change."
    echohl NONE
  else
    enew
    bdelete #
  endif
endfunction
