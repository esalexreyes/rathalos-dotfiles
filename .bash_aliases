
# Default
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --color=auto'

# Use eza instead of ls
alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'

# dita-ot
alias dita='/home/alexreyes/.dita/bin/dita'

# Custom functions
