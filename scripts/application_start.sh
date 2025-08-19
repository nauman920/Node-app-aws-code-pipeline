#!/bin/bash

# run as ubuntu user
sudo -i -u ubuntu bash << 'EOF'

cd /home/ubuntu/node-app

# make sure scripts are executable
chmod +x ./scripts/*.sh

# clean old modules
rm -rf node_modules package-lock.json

# load nvm
export NVM_DIR="/home/ubuntu/.nvm"
source "$NVM_DIR/nvm.sh"

# install dependencies
npm install --legacy-peer-deps

# start app with PM2
pm2 start "npm start" --name node-app --update-env
pm2 save

EOF
