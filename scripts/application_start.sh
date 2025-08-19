#!/bin/bash
# run as ubuntu user
sudo -i -u ubuntu bash << 'EOF'
cd /home/ubuntu/node-app
# make sure scripts are executable
chmod +x ./scripts/*.sh
# load nvm
export NVM_DIR="/home/ubuntu/.nvm"
source "$NVM_DIR/nvm.sh"
# install/update dependencies
npm install --legacy-peer-deps
# start or reload app with PM2
if pm2 list | grep -q node-app; then
    echo "Reloading existing PM2 process"
    pm2 restart node-app --update-env
else
    echo "Starting new PM2 process"
    pm2 start "npm start" --name node-app --update-env
fi
pm2 save
EOF