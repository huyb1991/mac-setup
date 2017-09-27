#  ---------------------------------------------------------------------------
#  Description:  This file holds all my BASH script configurations
#  Sections:
#  1.  Environment Configurations
#  2.  Completion
#  3.  Helper functions & Aliases
#  4.  Load my bash files configuration & packages
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------
#   Set Paths & Editor
    export PATH="$PATH:/usr/local/bin/"
    export EDITOR=/usr/bin/nano
    export NVM_DIR=~/.nvm
    export GITAWAREPROMPT=~/.bash/git-aware-prompt
    export BASH_DIR=~/bash-files                        # All bash scripts save here

#   Git Aware Prompt: https://github.com/jimeh/git-aware-prompt
    export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#   -----------------------------
#   2. COMPLETION
#   -----------------------------
#   Install the bash-completion package on MacOS X using port or brew.
#   Bash-git-completion: https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi

#   -----------------------------
#   3. HELPER FUNCTIONS & ALIASES
#   -----------------------------
#   Helper functions
    mcd () { mkdir -p "$1" && cd "$1"; }        # Makes new Dir and jumps inside

#   Aliases
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level
    alias ...='cd ../../'                       # Go back 2 directory levels
    alias ~="cd ~"                              # ~:            Go Home
    alias flushDNS='dscacheutil -flushcache'    # flushDNS:     Flush out the DNS Cache

#   -------------------------------
#   4. LOAD MY BASH FILES CONFIGURATION AND PACKAGES
#   -------------------------------
    source "${GITAWAREPROMPT}/main.sh"
    source "$BASH_DIR/.bash_git"                          # Git configurations
    source "$BASH_DIR/.bash_webdev"                       # Web development
    source "$BASH_DIR/.bash_private"                      # Private config - make sure it latest
