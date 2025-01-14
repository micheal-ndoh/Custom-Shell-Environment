echo "
   plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
  autojump
)
source $ZSH/oh-my-zsh.sh


 # Enable autocomplete for aliases and functions
autoload -Uz compinit
compinit " >> ~/.bashrc
