" Plugins {{{
  Plug 'jgdavey/vim-blockle', { 'for': 'ruby' }
  Plug 'jgdavey/vim-weefactor', { 'for': 'ruby' }
  Plug 'keith/rspec.vim', { 'for': 'ruby' }
  Plug 'tpope/vim-endwise', { 'for': 'ruby' }
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
" }}}

" Functions {{{
  command! -bar -range=% NotRocket :<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/ge
" }}}

" Configuration {{{
  augroup ruby
    autocmd BufNewFile,BufReadPost Rakefile,Vagrantfile set filetype=ruby
  augroup END

  " Disable default blockle mapping
  let g:blockle_mapping = 'F31'
  if !exists('g:rails_projections')
    let g:rails_projections = {}
  endif

  call extend(g:rails_projections, {
      \  "app/presenters/*.rb": {
      \     "command": "presenter",
      \     "test": "spec/presenter/{}_spec.rb",
      \     "alternate": "spec/presenter/{}_spec.rb",
      \     "template": "class {camelcase|capitalize|colons}\nend" }
      \ }, 'keep')

  if !exists('g:rails_gem_projections')
    let g:rails_gem_projections = {}
  endif

  call extend(g:rails_gem_projections, {
        \ "active_model_serializers": {
        \   "app/serializers/*_serializer.rb": {
        \     "command": "serializer",
        \     "template": "class {camelcase|capitalize|colons}Serializer < ActiveModel::Serializer\nend",
        \     "affinity": "model"}},
        \ "rspec-core": {
        \    "spec/support/*.rb": {
        \      "command": "support"}},
        \ "carrierwave": {
        \   "app/uploaders/*_uploader.rb": {
        \     "command": "uploader",
        \     "template": "class {camelcase|capitalize|colons}Uploader < CarrierWave::Uploader::Base\nend"}},
        \ "draper": {
        \   "app/decorators/*_decorator.rb": {
        \     "command": "decorator",
        \     "affinity": "model",
        \     "template": "class {camelcase|capitalize|colons}Decorator < ApplicationDecorator\nend"}},
        \ "fabrication": {
        \   "spec/fabricators/*_fabricator.rb": {
        \     "command": ["fabricator", "factory"],
        \     "alternate": "app/models/{}.rb",
        \     "related": "db/schema.rb#{pluralize}",
        \     "test": "spec/models/{}_spec.rb",
        \     "template": "Fabricator :{} do\nend",
        \     "affinity": "model"}},
        \ "factory_girl": {
        \   "spec/factories/*.rb": {
        \     "command": "factory",
        \     "alternate": "app/models/{}.rb",
        \     "related": "db/schema.rb#{pluralize}",
        \     "test": "spec/models/{}_spec.rb",
        \     "template": "FactoryGirl.define do\n  factory :{} do\n  end\nend",
        \     "affinity": "model"},
        \   "spec/factories.rb": {
        \      "command": "factory"},
        \   "test/factories.rb": {
        \      "command": "factory"}},
        \ "requests": {
        \   "spec/requests/*.rb": {
        \       "command": "request",
        \       "alternate": "app/controllers/{}.rb",
        \     }}
        \ }, 'keep')
" }}}

" Mappings {{{
  au FileType ruby let g:lmap.m = {
    \ 'name': '+mode',
    \ 'b': ['<Plug>BlockToggle', 'Toggle blocks'],
    \ 'l': ['<Plug>ExtractRspecLet', 'Extract let'],
    \ 'r': ['NotRocket', 'Upgrade rocket']
    \ }
" }}}
