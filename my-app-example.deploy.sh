#!/bin/bash
cd ~/mi-app-example
# Fetch changes from the remote repository
git fetch

# Check if there are any changes at origin/main
if [[ $(git diff HEAD..origin/main) ]]; then
    ~/mi-app-example.deployer.sh
else
	echo "[$(date)] Up to date."
fi
