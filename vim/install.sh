#!/bin/sh
echo "› setting uo neovim"

mkdir -p ~/.config/nvim/
ln -f ${DOTFILES}/vim/init.vim ~/.config/nvim/init.vim
ln -f ${DOTFILES}/vim/cheat40.txt ~/.config/nvim/cheat40.txt

pip install setuptools
pip install setuptools
pip  install --user neovim
pip2 install --user neovim
pip3 install --user neovim

# Install vim-plug
echo "› installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
