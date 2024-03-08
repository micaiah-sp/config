setlocal tabstop=4 shiftwidth=4 expandtab
setlocal spell
setlocal spelllang=en
setlocal spellfile=~/.vim/spelling/en.utf-8.add
noremap <leader>e o\begin{equation}<CR>\end{equation}<Esc>O
noremap <leader>f o\begin{figure}<CR><Tab>\centering<CR><Tab>\includegraphics[width=.7\linewidth]{}<CR><Tab>\caption{}<CR><Tab>\label{}<CR>\end{figure}<CR><Esc>
noremap <leader>F o\begin{figure}<CR><Tab>\centering<CR><Tab>\caption{}<CR><Tab>\label{}<CR>\end{figure}<CR><Esc>kkkk
noremap <leader>s o<Tab>\begin{subfigure}{.45\linewidth}<CR><Tab><Tab>\includegraphics[width=\linewidth]{}<CR><Tab><Tab>\caption{}<CR><Tab><Tab>\label{}<CR><Tab>\end{subfigure}<Esc>
noremap <leader>t o\begin{table}<CR><Tab>\centering<CR><Tab>\caption{}<CR><Tab>\label{}<CR><Tab>\begin{tabular}{}<CR><Tab>\end{tabular}<CR>\end{table}<CR><Esc>
noremap <leader>r :!pdflatex -interaction=nonstopmode %<CR>
noremap <leader>b :!biber <C-r>%<BS><BS><BS><BS><CR>
syn region texZone start="\\\(acr\a\)\|\(href\)*{" end="}\|%stopzone\>" transparent contains=@NoSpell,texStatement
syn match texComment "%.*$" contains=@texCommentGroup,@NoSpell
