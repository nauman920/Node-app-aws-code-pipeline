#!/bin/bash

echo "Stopping existing PM2 process"
pm2 stop node-app || true

