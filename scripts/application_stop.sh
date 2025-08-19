#!/bin/bash

echo "Stopping existing PM2 process"
pm2 stop node-app || true
pm2 delete node-app || true
