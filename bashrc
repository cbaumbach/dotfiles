# ~/.bashrc

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Use a colorful terminal.
[ -z "$TMUX" ]  &&  export TERM=xterm-256color

# Load alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Use a bare-bones prompt.
PS1="$ "

# Use emacs-style command line.
set -o emacs

# Use emacsclient as default editor.
EDITOR='emacsclient -a ""'; export EDITOR

# Stop putty from doing XOFF/XON with C-s/C-q.
stty -ixon

# Use utf-8 locale.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
