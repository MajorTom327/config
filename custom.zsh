plugins=(git wd vscode thefuck macos docker docker-compose)

source $ZSH/oh-my-zsh.sh
source ~/.env.zsh

alias create-remix="npx create-remix@latest --package-manager yarn -y --template majortom327/lofi-stack --token $GH_TOKEN"

alias ls='eza'
alias la='ls -la'

alias cat='bat'
alias htop='btm'

alias guid="uuidgen"
