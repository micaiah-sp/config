if [ ! -e ~/.localbashrc ]; then
    cp ~/.bashrc ~/.bashrc_config_backup
    echo "source ~/.mybashrc" >> ~/.bashrc
    touch ~/.localbashrc
fi
source ~/.bashrc
if [ ! -e ~/.local/ ]; then
    mkdir ~/.local/
fi
if [ ! -e ~/.local/bin ]; then
    mkdir ~/.local/bin
fi
if [ ! -e ~/.local/include ]; then
    mkdir ~/.local/include
fi
if [ ! -e ~/.local/lib ]; then
    mkdir ~/.local/lib
fi
if [ ! -e ~/.local/share ]; then
    mkdir ~/.local/share
fi
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
#ln -sf $(pwd)/usercustomize.py ~/.main_venv/lib/python3*/site-packages/
ln -sf $(pwd)/cpp-open ~/.main_venv/bin/
ln -sf $(pwd)/cpp-create ~/.main_venv/bin/
ln -sf $(pwd)/cpp-cropen ~/.main_venv/bin/
source ~/.main_venv/bin/activate
pip3 install numpy scipy matplotlib pandas sympy termcolor gitpython
