# Zoxide https://github.com/ajeetdsouza/zoxide integration
if status is-interactive
  # Check if zoxide was installed https://stackoverflow.com/questions/42831558/check-if-a-program-exists-from-a-fish-script
  if test -n (command -v zoxide)
    zoxide init fish | source
  end
end

