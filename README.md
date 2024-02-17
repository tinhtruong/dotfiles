# Update symlinks using GNU Stow
```shell
stow --verbose --target=$HOME --restow */
```

# Remove symlinks using GNU Stow
```shell
stow --verbose --target=$HOME --delete */
```

>**NOTE**: vscodium module have some problem with Stow, just delete it and update symlinks using restow
