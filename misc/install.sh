echo "› misc/install.sh"

mkdir -p ~/.ctags.d/
ln -s -f ${DOTFILES}/misc/defaults.ctags ~/.ctags.d/defaults.ctags

ln -s -f ${DOTFILES}/misc/NeoVim.app /Applications/NeoVim.app

#xcode command line tools
if xcode-select --install 2>&1 | grep installed; then
  echo installed;
else
  echo not installed, installing;
  xcode-select --install;
fi
