function! PreviewMarkdownFile()
  let curr_file = shellescape(expand('%:p'))
  call system('markdown ' . curr_file . ' > /tmp/vim-markdown-preview.html')
  call system('open /Applications/Safari.app')
  call system('osascript -e ''tell application "Safari" to open location "/tmp/vim-markdown-preview.html"''')
endfunction
