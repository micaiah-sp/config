setlocal tabstop=4 shiftwidth=4 expandtab
noremap <leader>f V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for \1 in 1:\2/g<CR>
