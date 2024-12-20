#
# ~/.bashrc
#

######################
#
#
# DISPLAY
#
#
######################


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Welcome Message
echo "Hello Willow! It is currently $(date '+%A %H:%M')"
# Prompt
PS1='\e[1;33m[\u@\h \W]\$ \e[m'



######################
#
#
# SSH KEYS
#
#
######################

# Use systemd daemon for OpenSSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# Ensure the ssh agent is running & register keys



######################
#
#
# CLI TOOLS
#
#
######################

# User defined aliases
alias ls='ls --color=auto --hyperlink=auto -h --group-directories-first'
alias grep='grep --color=auto'
alias mc='micro'
alias py='python'
alias ipy='ipython'
alias ok='okular'
alias weather='curl wttr.in/~Lancaster+UK'
alias pika='pokemon-colorscripts'
alias what='find . -print | grep -i'    # Search for case insensitive string in filesystem
alias fetch='fastfetch'
alias fman='compgen -c | fzf | xargs man'   # Interactive list of man pages

# Kitten aliases
alias kssh='kitten ssh'
alias icat='kitten icat'
alias ktrans='kitten transfer'


# Tab completion for mc alias
complete -F _comp_complete_minimal mc

# Enable zoxide
eval "$(zoxide init bash)"

# Enable fzf shell integration
eval "$(fzf --bash)"



#######################
#
#
# EXPORTS
#
#
#######################

# Local bin
export PATH="$PATH:/home/lemoneater/.local/bin"

# Environment variables
export EDITOR='micro'
export VISUAL='micro'
export TERM='xterm-kitty'
export DISPLAY=:0
export PAGER="bat"
export MANPAGER="sh -c 'col -bx | bat -p -lman'"
export MANROFFOPT="-c"