" vundle configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'vim-python/python-syntax'
call vundle#end()

" general settings
filetype plugin on
set number
set nowrap sidescroll=1
set showcmd
let mapleader = ","
packadd termdebug
nnoremap <leader>d :tabe GDB<CR>:view<CR>:Termdebug<CR><c-w>w<c-w>w<c-w>H
nnoremap <leader>s :Step<CR>
nnoremap <leader>n :Next<CR>
nnoremap <leader>c :Continue<CR>
let gutentags_ctags_exclude = ["build*"]
let gutentags_ctags_tagfile = ".tags"
set list
set listchars=tab:‧\ ,trail:…,extends:‣
set mps+=<:>
noremap <leader>t :set noexpandtab<CR>
noremap <leader>w /\<\\|[A-Z_0-9]<CR>
set previewheight=20
let g:tex_flavor = 'latex'
let g:python_highlight_all = 1
