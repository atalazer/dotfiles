#!/bin/sh

[ -f ~/.user ] && source ~/.user

export TERMINFO=~/.terminfo
export STARSHIP_CONFIG=~/.config/starship.toml

export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_USE_XINPUT2=1

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --ignore-file ".gitignore"'
export SKIM_DEFAULT_COMMAND='rg --files --no-ignore --ignore-file ".gitignore"'

_export_path(){
    if [[ -z $(printf $PATH | grep $1) ]]; then
        export PATH="$1:$PATH"
    fi
}
_export_path ${HOME}/.local/bin
_export_path ${HOME}/.local/bin/appimage
_export_path ${HOME}/.local/bin/link
_export_path ${HOME}/.local/bin/script

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Rust Cargo
source "$HOME/.cargo/env"

