if status is-interactive
    # ASDF configuration code
    if test -z $ASDF_DATA_DIR
        set _asdf_shims "$HOME/.asdf/shims"
    else
        set _asdf_shims "$ASDF_DATA_DIR/shims"
    end

    # Do not use fish_add_path (added in Fish 3.2) because it
    # potentially changes the order of items in PATH
    if not contains $_asdf_shims $PATH
        set -gx --prepend PATH $_asdf_shims
    end
    set --erase _asdf_shims

    # Setup ASDF completion, have to hard-code homebrew prefix as brew --prefix fail due to homebrew in not in the
    # Fish PATH when this piece of code run
    /opt/homebrew/bin/asdf completion fish > ~/.config/fish/completions/asdf.fish
end
