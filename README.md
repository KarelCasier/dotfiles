# dotfiles

> Based on [holman/dotfiles](https://github.com/holman/dotfiles)

## Install

Run this:

```sh
git clone https://github.com/KarelCasier/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
# Setup symlinks and brew
script/bootstrap
# Run install scripts
script/install.sh
```

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME` with an added `.`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## post install

- setup iTerm2 themes

- setup caps lock -> esc (can't find the `defaults write ...` command)

- install vim plugins using `:PlugInstall` in vim

- install tmux plugins using `<prexix-I>` in tmux
