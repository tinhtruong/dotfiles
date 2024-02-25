# Update symlinks using GNU Stow
Run the following command in the root folder of this project
```shell
stow --verbose --target=$HOME --restow */
```

# Remove symlinks using GNU Stow
Run the following command in the root folder of this project
```shell
stow --verbose --target=$HOME --delete */
```

>**NOTE**:
> * vscodium module have some problem with Stow, just delete it and update symlinks using restow
> * `stow` log some confusing output like `BUG in find_stowed_path?....`, it's a [known issue](https://github.com/aspiers/stow/issues/65)
> * `stow` sometimes fails to create symlinks due to `.DS_Store` file on macOS. You can recursively delete these files using the command:
>   ```shell
>   find . -name ".DS_Store" -delete
>   ```
