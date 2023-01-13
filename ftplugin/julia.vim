setlocal tabstop=4 shiftwidth=4 expandtab
noremap <leader>f V:s/ \([+-]\)/vim_placeholder\1/ge<CR>V:s/\([+-]\) /\1vim_placeholder/ge<CR>V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for \1 in 1:\2/ge<CR>V:s/vim_placeholder/ /ge<CR>
