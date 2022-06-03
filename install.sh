ln -sb $(pwd)/vimrc ~/.vimrc
if [ ! -d ~/.vim/after ]; then
    mkdir ~/.vim/after
fi
if [ -e ~/.vim/after/ftplugin ]; then
    echo "error: after/ftplugin exists"
    exit
fi
ln -s $(pwd)/ftplugin ~/.vim/after
