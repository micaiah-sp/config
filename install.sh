ln -sb $(pwd)/vimrc ~/.vimrc
rm -r ~/.vim/after/ftplugin
ln -s $(pwd)/ftplugin ~/.vim/after
