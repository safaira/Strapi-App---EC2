#!/bin/bash

## Strapi Application installation on Ubuntu 22

sudo apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

sudo chmod 764 ~/.nvm/nvm.sh
~/.nvm/nvm.sh

nvm install node && sudo apt install npm
nvm install 18.0
nvm use 18 
#npm install -g yarn

sudo apt update 
npx create-strapi-app@latest saniya-strapi-project --quickstart

#cd /home/ubuntu/saniya-strapi-project
#yarn develop
