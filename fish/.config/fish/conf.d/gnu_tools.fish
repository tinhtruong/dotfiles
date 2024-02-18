
# GNU bash 5.1+ and GNU tools (coreutils, findutils) integration
if status is-interactive
    # Only add coreutils bin to path if exists
    if test -d /usr/local/opt/coreutils
        set -gp fish_user_paths /usr/local/opt/coreutils/libexec/gnubin
    end
    if test -d /opt/homebrew/opt/coreutils
        set -gp fish_user_paths /opt/homebrew/opt/coreutils/libexec/gnubin
    end
    # Only add findutils bin to path if exists
    if test -d /usr/local/opt/findutils
        set -gp fish_user_paths /usr/local/opt/findutils/libexec/gnubin
    end
    if test -d /opt/homebrew/opt/findutils
        set -gp fish_user_paths /opt/homebrew/opt/findutils/libexec/gnubin
    end
    # Only add grep bin to path if exists
    if test -d /usr/local/opt/grep
        set -gp fish_user_paths /usr/local/opt/grep/libexec/gnubin
    end
    if test -d /opt/homebrew/opt/grep
        set -gp fish_user_paths /opt/homebrew/opt/grep/libexec/gnubin
    end
end
