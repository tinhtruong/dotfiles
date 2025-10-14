if status is-interactive
    # Setup Git identity only when we are not running inside a container
    if not test -f /.dockerenv
        # Start ssh-agent if not running
        # ssh-agent will set the SSH_AUTH_SOCK env var when it is running
        if not set -q SSH_AUTH_SOCK
            echo "SSH Agent is not running, starting it now..."
            eval (ssh-agent -c)
        end

        # List all SSH identities and store the output to the addedIdentities variable
        set addedIdentities (ssh-add -L)
        if string match -q "*no identities*" $addedIdentities # if the output contain the phrase 'no identities'
            echo "There is no Git identities, adding them now..."

            # If running on macOS, use macOS specific flag
            if test (uname) = Darwin
                set useAppleKeyChain "--apple-use-keychain"
            end

            ssh-add $useAppleKeyChain ~/.ssh/conf.d/id_tinhtruong_github/key.priv
            ssh-add $useAppleKeyChain ~/.ssh/conf.d/id_other_bitbucket/key.priv
            ssh-add $useAppleKeyChain ~/.ssh/conf.d/id_other_gitlab/key.priv
        end
    end
end
