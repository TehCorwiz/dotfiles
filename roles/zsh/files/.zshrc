# Zsh Config

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"

# Added jetbrains tools to path
path+=('/home/corwin/.local/share/JetBrains/Toolbox/bin')
export PATH

export ZSH="/home/corwin/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  rvm
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias l='lsd'
alias ls='lsd' 
alias la='lsd -la'
alias ll='lsd -l'

alias d-up='docker-compose up -d'
alias d-stop='docker-compose stop'
alias d-down='docker-compose down'
alias d-bash='docker-compose run web bash'
alias d-build='docker-compose build'
alias d-logs='docker-compose logs -f'
alias d-rm='docker-compose rm'
alias d-ps='docker-compose ps'

# Powerlevel9k config
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs)

