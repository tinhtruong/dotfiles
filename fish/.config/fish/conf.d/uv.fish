# Only add tools installed by UV (Python) to PATH if exists
if test -d ~/.local/bin
    contains ~/.local/bin $fish_user_paths; or set -ga fish_user_paths ~/.local/bin
end
