alias vim="nvim"

# Correct commands by typing 'fuck' after mistyping
eval $(thefuck --alias)

alias mux="tmuxinator"

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
