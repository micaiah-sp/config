touch ~/.localbashrc
ln -sb $(pwd)/vimrc ~/.vimrc
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi
if [ ! -d ~/.vim/after ]; then
    mkdir ~/.vim/after
fi
if [ ! -d ~/.vim/spelling ]; then
    mkdir ~/.vim/spelling
fi
ln -sf $(pwd)/ftplugin ~/.vim/after
ln -sf $(pwd)/ftdetect ~/.vim/after
ln -sf $(pwd)/mybashrc ~/.mybashrc
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

python3 -m venv ~/.main_venv
ln -sf $(pwd)/usercustomize.py ~/.main_venv/lib/python3*/site-packages/
