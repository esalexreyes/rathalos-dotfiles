#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

source /usr/share/nvm/init-nvm.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# zoxide
eval "$(zoxide init --cmd cd bash)"

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Starship Prompt
eval "$(starship init bash)"
