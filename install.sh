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
if [ -e ~/.vim/after/ftplugin ]; then
    echo "error: after/ftplugin exists"
    exit
fi
if [ -e ~/.vim/after/ftdetect ]; then
    echo "error: after/ftplugin exists"
    exit
fi
ln -s $(pwd)/ftplugin ~/.vim/after
ln -s $(pwd)/ftdetect ~/.vim/after
ln -s $(pwd)/mybashrc ~/.mybashrc
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

ln -s $(pwd)/usercustomize.py $(python3 -m site --user-site)
