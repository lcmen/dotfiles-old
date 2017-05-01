function! PushToCurrentBranch()
  exe ":Gwrite"
  let branch = system("git rev-parse --abbrev-ref HEAD")
  exe ":Git push origin " . branch
endfunction
