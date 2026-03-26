
# 1. POWERLEVEL10K INSTANT PROMPT
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 2. PATH & ENVIRONMENT
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"        
export PATH="$HOME/nvim-macos/bin:$PATH"     
export PATH="$PATH:$HOME/go/bin"             

# 3. SOURCE SECRETS
# Loads sensitive tokens from the separate file
[[ ! -f ~/.secrets ]] || source ~/.secrets

# 4. OH-MY-ZSH PLUGINS & NVM
plugins=(git nvm)
zstyle ':omz:plugins:nvm' lazy yes # Fast NVM loading

source "$ZSH/oh-my-zsh.sh"

# 5. THEME & PROMPT
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 6. ALIASES & TOOLS
alias ll="eza -al"
alias vi="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# fzf shell integration
eval "$(fzf --zsh)"
