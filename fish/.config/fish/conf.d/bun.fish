if status is-interactive
    # Only add Bun bin to PATH if exists
    if test -d ~/.bun
        set --export BUN_INSTALL "$HOME/.bun"
        set --export PATH $BUN_INSTALL/bin $PATH
    end
end

