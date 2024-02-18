if status is-interactive
    # List all SSH identities and store the output to the addedIdentities variable
    set addedIdentities (ssh-add -L)

    if string match -q "*no identities*" $addedIdentities # if the output contain the phrase'no identities'
        echo "There is no Git identities, adding them now..."
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_tinhtruong_github/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_bitbucket/key.priv
        ssh-add --apple-use-keychain ~/.ssh/conf.d/id_other_gitlab/key.priv
    end
end
