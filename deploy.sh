#!/bin/bash
mkdir -p app_logs
echo "Deployment started at: $(date)" > app_logs/deploy.log
mkdir -p build
touch build/app_ready.txt
