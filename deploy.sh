#!/bin/bash

SERVER_USER="ubuntu"
SERVER_IP="54.219.180.233"
REMOTE_PATH="/var/www/mystaticwebsite"

echo "Deploying to $SERVER_USER@$SERVER_IP..."
rsync -avz --delete ./ $SERVER_USER@$SERVER_IP:$REMOTE_PATH

echo "Deployment complete!"
