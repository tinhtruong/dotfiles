# Only add homebrew bin to path if exists
if test -d /opt/homebrew/bin
    contains /opt/homebrew/bin $fish_user_paths; or set -Ua fish_user_paths /opt/homebrew/bin
end