if status is-interactive
    set addedIdentity (ssh-add -L)
    if test -z "$addedIdentity"
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_tinhtruong_github/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_bitbucket/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_gitlab/key.priv
    end
end
