plugins=(git wd vscode thefuck macos docker docker-compose)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/sbin:$PATH
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

alias create-remix="npx create-remix@latest --package-manager yarn -y --template majortom327/lofi-stack --token $GH_TOKEN"

alias ls='eza'
alias la='ls -la'

alias cat='bat'
alias htop='btm'

alias guid="uuidgen"

export PATH=$HOME/.cargo/bin:$PATH
export PATH=/Users/vthomas/.meteor:$PATH
export PATH="$PATH:/Users/valentinthomas/.foundry/bin"
