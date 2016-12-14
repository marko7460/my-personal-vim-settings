alias ll='ls -l'
alias subl="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
alias jmeter='/Users/marko/apache-jmeter-3.0/bin/jmeter.sh'

# Setting ulimits
ulimit -n 65536
ulimit -u 2048

export PATH=/Users/marko/bin:/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

#PS1="\[\033[1;34m\]\u\e[1;37m\]☮\[\033[1;31m\]\h:\033[0m\w▶ "
PS1="[\\D{%m/%d %H:%M:%S}] [\\h \\W]\\$ "
START_BLUE='\e[1;34m'
END_BLUE='\e[m'
START_WHITE='\e[1;37m'
END_WHITE='\e[m'
START_RED='\e[1;31m'
END_RED='\e[m'
PEACE='☮'
#PS1="$START_BLUE\u$END_BLUE$START_WHITE☮$END_WHITE$START_RED\h:$END_RED\w\$ "
#echo -ne "\033]0;"$(pwd)"\007"
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Single_line
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi


# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

