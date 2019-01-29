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
    export BASH_DIR=~/bash-files                          # All bash scripts save here

#   Add Git Branch Name to Terminal Prompt (Mac)
#   https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
    parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }

    export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#   -----------------------------
#   2. COMPLETION
#   -----------------------------
#

#   -----------------------------
#   3. HELPER FUNCTIONS & ALIASES
#   -----------------------------
#   Helper functions
    mcd () { mkdir -p "$1" && cd "$1"; }                  # Makes new Dir and jumps inside

#   Aliases
    alias ~="cd ~"                                        # Go Home
    alias ..='cd ../'                                     # Go back 1 directory level
    alias flushDNS='dscacheutil -flushcache'                # Flush out the DNS Cache

#   -------------------------------
#   4. LOAD MY BASH FILES CONFIGURATION AND PACKAGES
#   -------------------------------
    source "$BASH_DIR/.bash_git"                          # Git configurations
    source "$BASH_DIR/.bash_webdev"                       # Web development
    source "$BASH_DIR/.bash_private"                      # Private config - make sure it latest
