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
nnoremap <Tab> :bn<CR>                      " Tab to go next buffer
nnoremap <S-Tab> :bp<CR>                    " Shift-Tab to go previous buffer
nmap <silent> <leader>q :call DeleteBuffer()<CR>
nmap <silent> <leader>bq :call DeleteAllBuffers()<CR>
nmap <silent> <leader>bQ :BufOnly<CR>

" Match buffers matching file pattern
cnoremap <C-q> <C-a>

" Clear the search buffer
nmap <silent> <S-h> :nohlsearch<CR>

" Search word under a cursor
noremap <Leader>gs :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Search shortcut
if executable('ag')
  nnoremap , :Ag<SPACE>
endif

" Follow symbol
nnoremap <leader>] g<C-]>
vnoremap <leader>] g<C-]>

" Return to the previous position
nnoremap <leader>[ <C-t>
nnoremap <silent> <leader>. :cnext<CR>
nnoremap <silent> <leader>, :cprevious<CR>

" Dispatch pane
nnoremap <leader>dq :Copen<CR>:q<CR>
nnoremap <leader>do :Copen<CR>

" Project navigation (including Rails)
nnoremap <leader>ec :Econtroller<Space>
nnoremap <leader>ee :Eenvironment<Space>
nnoremap <leader>eh :Ehelper<Space>
nnoremap <leader>em :Emodel<Space>
nnoremap <leader>eo :Emailer<Space>
nnoremap <leader>es :Estyle<Space>
nnoremap <leader>ev :Eview<Space>
nnoremap <leader>evc :EVcontroller<Space>
nnoremap <leader>eve :EVenvironment<Space>
nnoremap <leader>evh :EVhelper<Space>
nnoremap <leader>evm :EVmodel<Space>
nnoremap <leader>evo :EVmailer<Space>
nnoremap <leader>evs :EVstyle<Space>
nnoremap <leader>evv :EVview<Space>

" Ruby tests
map <Leader>t :VroomRunTestFile<CR>
map <Leader>s :VroomRunNearestTest<CR>
map <Leader>l :VroomRunLastTest<CR>

" Files
map <leader>n :call RenameFile()<CR>

" Plugins mapping
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <leader>p :CtrlPFunky <CR>
nnoremap <leader>o :CtrlPTag<cr>
