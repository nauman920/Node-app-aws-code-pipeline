#!/bin/bash

# ensure ubuntu owns all files
chown -R ubuntu:ubuntu /home/ubuntu/node-app

cd /home/ubuntu/node-app

# make scripts executable
chmod +x ./scripts/*.sh

# clean old modules
rm -rf node_modules package-lock.json

# install dependencies
npm install --legacy-peer-deps

# start app with PM2
pm2 start "npm start" --name node-app
pm2 save
