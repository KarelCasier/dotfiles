echo "› misc/install.sh"

echo "› symlinking files"
mkdir -p ~/.ctags.d/
ln -s -f ${DOTFILES}/misc/defaults.ctags ~/.ctags.d/defaults.ctags

ln -s -f ${DOTFILES}/misc/NeoVim.app /Applications/NeoVim.app

#xcode command line tools
echo "› installing xcode cmdline tools"
if xcode-select --install 2>&1 | grep installed; then
  echo installed;
else
  echo not installed, installing;
  xcode-select --install;
fi

echo "› installing cpp std man pages"
# cppreference man pages
current_dir=`pwd`
temp_dir=`mktemp -d 2>/dev/null || mktemp -d -t 'stdman'`
cd $tempdirectory
git clone git@github.com:jeaye/stdman.git
cd stdman
./configure
make install
cd $current_dir
