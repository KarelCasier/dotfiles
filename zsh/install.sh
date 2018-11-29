echo "› setting zsh as default"

# Add zsh to valid shells
sudo sh -c "grep -q -F \"$(which zsh)\" /etc/shells" || sudo sh -c "echo \"$(which zsh)\" >> /etc/shells"
# set zsh default
chsh -s $(which zsh)

# Install fzf
$(brew --prefix)/opt/fzf/install --all
