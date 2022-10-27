if status is-interactive
    # set up adsf version manager
    if test -f ~/.asdf/asdf.fish
        source ~/.asdf/asdf.fish
        set -gx fish_complete_path ~/.asdf/completions $fish_complete_path
    end
end
