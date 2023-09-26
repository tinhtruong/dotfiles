if status is-interactive
    set addedIdentity (ssh-add -L)

    if string match -q "*no identities*" $addedIdentity
        echo "There is no Git identities, adding them now..."
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_tinhtruong_github/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_bitbucket/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_gitlab/key.priv
    end
end
