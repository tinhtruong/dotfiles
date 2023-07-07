
# GNU bash 5.1+ and coreutils integration integration
if status is-interactive
  # Only add homebrew bin to path if exists
    if test -d /usr/local/opt/coreutils
        set -gp fish_user_paths /usr/local/opt/coreutils/libexec/gnubin
    end
    if test -d /opt/homebrew/opt/coreutils
        set -gp fish_user_paths /opt/homebrew/opt/coreutils/libexec/gnubin
    end
end
