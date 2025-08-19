#!/bin/bash

# ensure app folder exists
mkdir -p /home/ubuntu/node-app

# ensure ubuntu owns the folder
chown -R ubuntu:ubuntu /home/ubuntu/node-app

# set basic permissions
chmod 755 /home/ubuntu/node-app
