# Zsh Config

export TERM="xterm-256color"

# Make sure paths are unique
typeset -U path

# Added jetbrains tools to path
path+=("$HOME/.local/share/JetBrains/Toolbox/bin/")
# Added Cargo tools to path
path+=("$HOME/.cargo/bin/")
# Perl, for some reason?
path+=("$HOME/perl5/bin/")
# Personal bin
path+=("$HOME/.local/bin/")
# Emacs DOOM config
path+=("~/.emacs.d/bin/")

export ZSH="/home/corwin/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias fd='fdfind'

alias l='lsd'
alias ls='lsd' 
alias la='lsd -la'
alias ll='lsd -l'

alias d-up='docker-compose up -d'
alias d-stop='docker-compose stop'
alias d-down='docker-compose down'
alias d-bash='docker-compose run app bash'
alias d-build='docker-compose build'
alias d-logs='docker-compose logs -f'
alias d-rm='docker-compose rm'
alias d-ps='docker-compose ps'

# Kitty shortcuts
alias kat="kitty +kitten icat"

# Powerlevel9k config
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs)

source /home/corwin/.config/broot/launcher/bash/br
source $HOME/.rvm/scripts/rvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/corwin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/corwin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/corwin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/corwin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

