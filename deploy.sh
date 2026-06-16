#!/bin/bash
# Deploy Script for Tom Sawyer Painters

# REPLACE with your actual paths
SITE_DIR="/home/username/public_html"
LOG_FILE="/home/username/deploy.log"

cd $SITE_DIR

# Pull latest from git
git pull origin main 2>&1 | tee -a $LOG_FILE

echo "--- Deployment completed at $(date) ---" | tee -a $LOG_FILE