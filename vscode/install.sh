
if test "$(which code)"; then
    echo "› linking vscode"

    if [ "$(uname -s)" = "Darwin" ]; then
        VSCODE_HOME="$HOME/Library/Application Support/Code"
    else
        VSCODE_HOME="$HOME/.config/Code"
    fi

    ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
    ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"

    echo "› installing vscode plugins"

    # from `code --list-extensions`
    modules="
    2gua.rainbow-brackets
    DavidAnson.vscode-markdownlint
    DotJoshJohnson.xml
    LaurentTreguier.uncrustify
    PeterJausovec.vscode-docker
    dracula-theme.theme-dracula
    fallenwood.vimL
    hnw.vscode-auto-open-markdown-preview
    mitaki28.vscode-clang
    ms-python.python
    ms-vscode.cpptools
    naereen.makefiles-support-for-vscode
    tomphilbin.gruvbox-themes
    twxs.cmake
    vscodevim.vim
    wayou.vscode-todo-highlight
    xaver.clang-format"
    for module in $modules; do
        code --install-extension "$module" || true
    done
fi

