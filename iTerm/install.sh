
[ "$(uname -s)" != "Darwin" ] && echo "› Skipping..." && exit 0

echo "› setting up iTerm"

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${DOTFILES}/iterm/profile"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

echo 'if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi' >> ~/.bash_profile
