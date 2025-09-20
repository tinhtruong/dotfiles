if status is-interactive
    if test -n (command -v gpg) # check if gpg exists
        export GPG_TTY=$(tty)
    end
end
