# Set up the prompt
autoload -Uz promptinit
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' (%b)'
 
# Set up the prompt (with git branch name)
setopt prompt_subst
#%F{147}%n%f %F{225}in%f username in
SYMBOLS=(    ﳄ)
RANDOM_SYMBOL=${SYMBOLS[RANDOM%${#SYMBOLS[@]}]}

PROMPT=' %F{225}$RANDOM_SYMBOL%f %F{147}${PWD/#$HOME/~}%f%F{139}${vcs_info_msg_0_}%f %F{225}%#%f '

export EDITOR='nvim'
export VISUAL='nvim'

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

#aliases
alias v='nvim'

##git aliases
alias gst='git status'
alias gaa='git add .'
alias gp='git push'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($fpath "/home/fi/.zfunctions")

bindkey -v
bindkey '^R' history-incremental-search-backward

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=#fed3ff,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=#ffebff'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#fed3ff,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#fed3ff,bold'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#fed3ff'
