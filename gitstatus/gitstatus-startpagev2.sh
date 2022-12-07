#! bin/bash
# Check if there are pending commits from the remote repository
cd $HOME/repos/jspot
git fetch
git status


if [ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]; then
    # Send a notification
    notify-send "There are pending commits from the remote repository: startpagev2"
fi
