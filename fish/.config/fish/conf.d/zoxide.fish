# Zoxide https://github.com/ajeetdsouza/zoxide integration
if status is-interactive
  command -v zoxide
  if test $status -eq 0
    zoxide init fish | source
  end
end

