#!/bin/bash

# Change the user UID and GID. Update the home folder to match the new IDs. This script must be executed by root. Useful if the devcontainer
# user ID is different from the ID of the user that owns a mounted volume. You can change the devcontainer user ID with the following
# command: `./update_user_uid_gid.sh NEW_UID NEWGID`

# $1: new UID
# $2: new GID


user="dev"
home="/home/$user"
new_UID="$1"
new_GID="$2"

groupmod --gid="$new_GID" "$user"
usermod --uid="$new_UID" --gid="$new_GID" "$user"
chgrp --recursive "$user" "$home"
chown --recursive "$user" "$home"
