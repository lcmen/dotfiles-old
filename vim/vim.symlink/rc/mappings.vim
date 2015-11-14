" Fix Ctrl + h for NeoVim
if has('nvim')
  nmap <BS> <C-W>h
endif

" Space as leader key
let mapleader="\<Space>"

" Move more senibly when line wrapping enabled
nmap k gk
nmap j gj

" Quick edit and reload of .vimrc
nmap <leader>vo :tabe $MYVIMRC<CR>
nmap <leader>vr :source $MYVIMRC<CR>

" Block arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Up>   :echoe "Use k"<CR>
nnoremap <Right>:echoe "Use l"<CR>

" New blank tab
nnoremap <S-t> :tabe<CR>

" Resize windows with the arrow keys
nnoremap <up>    <C-W>+
nnoremap <down>  <C-W>-
nnoremap <left>  3<C-W>>
nnoremap <right> 3<C-W><

" Moving block of codes
vnoremap < <gv
vnoremap > >gv

" Buffers
nnoremap <Tab> :bn<CR>            " Tab to go next buffer
nnoremap <S-Tab> :bp<CR>          " Shift-Tab to go previous buffer
nnoremap <Leader><Leader> <C-^>   " Map 2x leader to toggle buffers
" Match buffers matching file pattern
cnoremap <C-q> <C-a>

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" Follow symbol
nnoremap <leader>] g<C-]>
vnoremap <leader>] g<C-]>
" Return to the previous position
nnoremap <leader>[ <C-t>
nnoremap <silent> <leader>. :cnext<CR>
nnoremap <silent> <leader>, :cprevious<CR>

" Dispatch
nnoremap <leader>dq :Copen<CR>:q<CR>

" Rails navigation
nnoremap <leader>rc :Econtroller<Space>
nnoremap <leader>re :Eenvironment<Space>
nnoremap <leader>rh :Ehelper<Space>
nnoremap <leader>rm :Emodel<Space>
nnoremap <leader>rs :Emailer<Space>
nnoremap <leader>rv :Eview<Space>
nnoremap <leader>rvc :EVcontroller<Space>
nnoremap <leader>rve :EVenvironment<Space>
nnoremap <leader>rvh :EVhelper<Space>
nnoremap <leader>rvm :EVmodel<Space>
nnoremap <leader>rvs :EVmailer<Space>
nnoremap <leader>rvv :EVview<Space>

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Buffers and files
nmap <silent> <leader>q :call BufferDelete()<CR>
map <leader>n :call RenameFile()<CR>

" Plugins mapping
nnoremap <F3> :vs.<CR>
nnoremap <leader>p :CtrlPFunky <CR>
nnoremap <leader>o :CtrlPTag<cr>
nnoremap <leader>h :Dash<CR>
