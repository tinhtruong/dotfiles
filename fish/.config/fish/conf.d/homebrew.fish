# Only add homebrew bin to path if exists
if test -d /opt/homebrew/bin
    contains /opt/homebrew/bin $fish_user_paths; or set -ga fish_user_paths /opt/homebrew/bin
    contains /opt/homebrew/sbin $fish_user_paths; or set -ga fish_user_paths /opt/homebrew/sbin
end

if test -d /usr/local/sbin
    contains /usr/local/sbin $fish_user_paths; or set -ga fish_user_paths /usr/local/sbin
end