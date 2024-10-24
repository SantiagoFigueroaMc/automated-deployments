cd ~
# my-app-example
MY_APP_EXAMPLE_LOCK_FILE="$(pwd)/my-app-example.lock"
# lock file to prevent multiple instances of the script running at the same time
flock -n $MY_APP_EXAMPLE_LOCK_FILE ./my-app-example.fetch.sh > ~/deploy-my-app-example.log 2>&1
