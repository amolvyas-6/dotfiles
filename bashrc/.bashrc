# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
# PS1="\W \[\e]0;\w\a\]$PS1"
#
eval "$(starship init bash)"

lst() {
  local level=${1:-2} # default to 2 if no argument given
  eza --tree --level="$level" --long --icons --git
}

. "$HOME/.local/share/../bin/env"
. /usr/share/nvm/init-nvm.sh >/dev/null 2>&1
