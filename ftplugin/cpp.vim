setlocal tabstop=2 shiftwidth=2 expandtab
noremap <leader>f V:s/ \([+-]\)/vim_placeholder\1/ge<CR>V:s/\([+-]\) /\1vim_placeholder/ge<CR>V:s/, /,vim_placeholder/ge<CR>V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for (int \1 = 0; \1 < \2; ++\1)/ge<CR>V:s/vim_placeholder/ /ge<CR>$
noremap <leader>F V:s/ \([+-]\)/vim_placeholder\1/ge<CR>V:s/\([+-]\) /\1vim_placeholder/ge<CR>V:s/, /,vim_placeholder/ge<CR>V:s/for \+\([^ ]\+\) \+\([^ ]\+\)/for (Int \1 = 0; \1 < \2; ++\1)/ge<CR>V:s/vim_placeholder/ /ge<CR>$
syn match Constant "\(\(\<\d\+\(\.\d*\)\=\)\|\(\.\d\+\)\)\(\(e[-+]\=\d\+\)\=\)"
command -nargs=1 -bar Open :tabe include/<args>.hpp | :rightbelow :vs libhexed/<args>.cpp | :rightbelow :vs test/test_<args>.cpp | :wincmd w
command -nargs=1 -bar Create :!cpp-create <args>
command -nargs=1 Cropen :Create <args> | :Open <args>
command -nargs=1 Crho :Create -h <args> | :Open <args>
