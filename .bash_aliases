
# Default
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --color=auto'

# Use eza instead of ls
ld='eza -lD'
lf='eza -lF --color=always | grep -v /'
lh='eza -dl .* --group-directories-first'
ll='eza -al --group-directories-first'
ls='eza -alF --color=always --sort=size | grep -v /'
lt='eza -al --sort=modified'

# Custom functions
