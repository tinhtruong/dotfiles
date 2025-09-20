# Starship https://starship.rs/ integration
if status is-interactive
  # Check if starship was installed https://stackoverflow.com/questions/42831558/check-if-a-program-exists-from-a-fish-script
  if test -n (command -v starship)
    starship init fish | source
  end
end

