" Filetypes
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType php setl softtabstop=4 shiftwidth=4
autocmd FileType python setl softtabstop=4 shiftwidth=4
autocmd FileType xml setl softtabstop=2 shiftwidth=2

" Syntax
autocmd BufNewFile,BufReadPost *.jst set syntax=html
autocmd BufNewFile,BufReadPost *.md,*.mdown,*.mdwn,*.mmd set filetype=markdown
autocmd BufNewFile,BufReadPost Rakefile,Vagrantfile set filetype=ruby
