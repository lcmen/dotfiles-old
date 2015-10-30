" Simple function to check if vim is running within Tmux
" Taken from https://github.com/christoomey/vim-tmux-navigator
function! InTmuxSession()
  return $TMUX != ''
endfunction
