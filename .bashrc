#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Enable color support for the ls command
alias ls='ls --color=auto'

# Enable color support for grep
alias grep='grep --color=auto'

# Set LS_COLORS for colorized file listings
export LS_COLORS="di=34:fi=0:ln=36:pi=33:so=32:do=35:bd=1;31:cd=1;31:or=1;33:mi=1;36:ex=1;32"

# Set the prompt with colors
export PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[00m\]$ "
# Automatically switch to regular user
if [ "$(whoami)" = "root" ]; then
    su - evandagur
fi
# Ensure we're in the home directory when starting
if [ "$(pwd)" = "/mnt/c/WINDOWS/system32" ]; then
    cd ~
fi

# path issues
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
. "$HOME/.cargo/env"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$(npm bin -g)"
export PATH="/home/evandagur/codelldb-v1.11.4/adapter:$PATH"
export PATH="$HOME/bin:$PATH"
	
nvim () {
    # Check if socat is running
    pidof socat > /dev/null 2>&1 || {
        # If socat isn't running, start it
        socat UNIX-LISTEN:/tmp/discord-ipc-0,fork EXEC:"/mnt/c/tools/npiperelay.exe //./pipe/discord-ipc-0" &
        echo "Started socat for Discord IPC"
    }

    # Now run Neovim
    command nvim "$@"
}
alias vim='nvim'
PS1='\[\033[38;5;93m\]ドメインの拡大\[\033[0m\] \[\033[38;5;32m\]📂 \[\033[0;34m\]\w\[\033[0m\] \[\033[38;5;46m\]>_ \[\033[0m\]'
