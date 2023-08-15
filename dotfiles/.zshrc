# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/huynguyen/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# ========== #
#   PLUGIN   #
# ========== #
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# ========== #
#    ALIAS   #
# ========== #
alias projects='cd ~/works/projects'
alias practice='cd ~/works/practice'

alias gs='git status'
alias gb='git branch'
alias gl='git log'

alias ssh_huyb='ssh-add ~/.ssh/github_huyb1991'
alias git_huyb='git config user.name "Huy Nguyen" && git config user.email "huyb.1991@gmail.com"'
