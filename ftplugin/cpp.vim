setlocal tabstop=2 shiftwidth=2 expandtab
noremap <leader>f V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for (int \1 = 0; \1 < \2; ++\1)/g<CR>V:s/\([^+-]\)\([+-]\)\([^+-]\)/\1 \2 \3/g<CR>
