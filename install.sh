ln -sb $(pwd)/vimrc ~/.vimrc
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi
if [ ! -d ~/.vim/after ]; then
    mkdir ~/.vim/after
fi
if [ -e ~/.vim/after/ftplugin ]; then
    echo "error: after/ftplugin exists"
    exit
fi
ln -s $(pwd)/ftplugin ~/.vim/after
ln -s $(pwd)/mybashrc ~/.mybashrc
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
