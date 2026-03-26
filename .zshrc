
# 1. POWERLEVEL10K INSTANT PROMPT
# Should stay at the very top of ~/.zshrc for maximum speed.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 2. PATH & ENVIRONMENT
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"        # Prioritize Homebrew binaries
export PATH="$HOME/nvim-macos/bin:$PATH"     # Neovim path
export PATH="$PATH:$HOME/go/bin"             # Go binaries (avoids slow subshell)

# 3. OH-MY-ZSH PLUGINS
# Added 'nvm' plugin to handle the heavy lifting
plugins=(git nvm)

# Speed boost: Only load NVM when you actually use it
zstyle ':omz:plugins:nvm' lazy yes

source "$ZSH/oh-my-zsh.sh"

# 4. THEME & PROMPT (Homebrew Version)
# Pointing back to your Homebrew path to restore your specific look
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# This loads your saved prompt configuration (icons, colors, etc.)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 5. ALIASES & TOOLS
alias ll="eza -al"
alias vi="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# fzf shell integration
eval "$(fzf --zsh)"

# 6. USER TOKENS
export ACOMS_NPM_TOKEN="cmVmdGtuOjAxOjE3NzQzNjY5NDM6ZWhZOEhZMWJHVHE0UlZyM1lLOFdKUkxTV3hM"
