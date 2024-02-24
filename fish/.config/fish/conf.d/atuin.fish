# Sync, search and backup shell history with Atuin
# https://docs.atuin.sh/
if status is-interactive
  # Check if atuin was installed https://stackoverflow.com/questions/42831558/check-if-a-program-exists-from-a-fish-script
  if command -sq atuin
  # TODO: The integration with fish and fzf is not mature yet, so we comment it out
  # https://github.com/atuinsh/atuin/issues/68#issuecomment-1928691176
  # Uncomment the following line when the above issue is resolved.
  #  atuin init fish | source
  end
end
