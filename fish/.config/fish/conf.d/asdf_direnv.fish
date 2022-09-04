# Direnv https://direnv.net/ integration
if status is-interactive
  # Check if direnv was installed https://stackoverflow.com/questions/42831558/check-if-a-program-exists-from-a-fish-script
  if command -sq direnv
    direnv hook fish | source
  end
end