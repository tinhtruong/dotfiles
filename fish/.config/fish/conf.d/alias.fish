# Set up command aliases

# https://github.com/eza-community/eza
alias ls "eza"
alias tree "eza --tree"

# https://github.com/sharkdp/bat
alias cat "bat"

# Git aliases
alias gci "git commit -m"
alias gca "git commit -am"
alias gco "git checkout"
alias gad "git add"
alias gps "git push"
alias gpl "git pull"
alias gsh "git stash"
alias gst "git status"
alias gmg "git merge"
alias grb "git rebase"
alias gcl "git clean -fd"
alias grs "git reset"
alias glg "git log"

# https://wiki.archlinux.org/title/Kitty#Terminal_issues_with_SSH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"