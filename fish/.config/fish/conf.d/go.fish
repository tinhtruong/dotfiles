# Only add Golang bin to PATH if exists
if test -d ~/go/bin
    contains ~/go/bin $fish_user_paths; or set -ga fish_user_paths ~/go/bin
end
