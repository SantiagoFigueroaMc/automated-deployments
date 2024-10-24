# Automatic Deployments
How to create automatic deploys using crontab and shell scripts.

## Pull changes and deploy
The [deploy script](./my-app-example.deploy.sh) pulls the
main branch and runs the docker compose to compile and
launch the application.

## Check if there are changes at origin
The [fetch script](./my-app-example.fetch.sh) fetchs the branch origin/main and if it finds changes executes the [deploy script](./my-app-example.deploy.sh)

## Lock file and crontab
The [task script](cron_task.sh) is called every minute by a crontab. It calls the [fetch script](./my-app-example.fetch.sh) if the lockfile is available.

### Setting up crontab
1. Open crontab editor
```
crontab -u current_user -e
```

2. Add a job pointing to the [task script](./cron_task.sh) that executes every minute.
```
...

# Fetch and deploy my-app-example
* * * * * ~/cron_task.sh
```
