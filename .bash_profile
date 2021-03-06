# Ethan Lie's Personalized Bash Profile
# =====================================

# --== Colors ==--
# Because who wants to memorize these numbers?
BLACK="\[\033[0;30m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
WHITE="\[\033[0;37m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[1;31m\]"
YELLOW="\[\033[0;33m\]"
YELLOW_BOLD="\[\033[1;33m\]"
GREEN="\[\033[0;32m\]"
GREEN_BOLD="\[\033[1;32m\]"
BLUE="\[\033[0;34m\]"
BLUE_BOLD="\[\033[1;34m\]"
CYAN="\[\033[0;36m\]"
CYAN_BOLD="\[\033[1;36m\]"
PURPLE="\[\033[0;35m\]"
PURPLE_BOLD="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"

# --== Coloring/Visual ==--
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# --== Basic Prompt ==--
export PS_START='${debian_chroot:+($debian_chroot)}\033[38;5;255;1m\u@\h\033[00m : \033[38;5;255;1m\w\033[00m'
export PS_END=' \n\033[38;5;229m[\t]\033[00m $ '
export PS1=$PS_START$PS_END

# --== Git 'Plugins' ==--
# Auto-complete
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash

# # Prompt
# # curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
# source ~/.git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE="1"
# export GIT_PS1_SHOWUNTRACKEDFILES="1"
# export GIT_BRANCH_PROMPT='$(__git_ps1 " (%s)")'

# curl https://github.com/magicmonty/bash-git-prompt.git -o ~/.bash_git_prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_START=$PS_START
GIT_PROMPT_END=$PS_END
source ~/.bash-git-prompt/gitprompt.sh

export WORKON_HOME=~/.virtualenvs

# Set terminal background color to black
#   Instead of this command, I just set the terminal background color manually because I cannot
#   control opacity from the command line.
# osascript -e "tell application \"Terminal\" to set background color of window 1 to {0, 0, 0}"

# Set font color to light grey
#   Because no such setting is needed for font color, I can set it regularly.
# osascript -e "tell application \"Terminal\" to set normal text color of window 1 to {52428, 54998, 54998}"

# --== Aliases/Shortcuts ==--
# code: Opens Visual Studio Code from commandline
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# --== Useful Macros ==--
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
export repos=$HOME/Repos


# --== Load virtualenvwrapper if it exists ==--
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    . /usr/local/bin/virtualenvwrapper.sh
fi

# --== Load .autoenv if it exists ==--
if [ -d ~/.autoenv ]; then
    source ~/.autoenv/activate.sh
fi

# --== Load .bashrc if it exists ==--
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi



