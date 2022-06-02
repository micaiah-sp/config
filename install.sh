ln -sb $(pwd)/vimrc ~/.vimrc
unlink ~/.vim/after/ftplugin
ln -s $(pwd)/ftplugin ~/.vim/after
