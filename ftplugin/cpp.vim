setlocal tabstop=2 shiftwidth=2 expandtab
noremap <leader>f V:s/ \([+-]\)/vim_placeholder\1/ge<CR>V:s/\([+-]\) /\1vim_placeholder/ge<CR>V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for (int \1 = 0; \1 < \2; ++\1)/ge<CR>V:s/vim_placeholder/ /ge<CR>$
