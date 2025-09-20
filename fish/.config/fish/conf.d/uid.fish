# Export the UID and GID of the current logged in user as environment variable
# so that they can be use in Docker container run to match UID and GID with user inside container
# to solve the mount permission issue
if status is-interactive
    export UID=$(id -u)
    export GID=$(id -g)
end
