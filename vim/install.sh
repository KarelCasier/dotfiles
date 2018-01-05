#!/bin/sh
echo "› vim/install.sh"

mkdir -p ~/.config/nvim/
ln -s -f ${DOTFILES}/vim/init.vim ~/.config/nvim/init.vim
ln -s -f ${DOTFILES}/vim/cheat40.txt ~/.config/nvim/cheat40.txt

pip install setuptools
pip install setuptools
pip  install --user neovim
pip2 install --user neovim
pip3 install --user neovim

# Install vim-plug
echo "installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing plugins (logged in /tmp/vim-plugins.log)"
nvim +PluginInstall +qall >/tmp/vim-plugins.log 2>&1 || true
