# My NixOS Configuration.
Uses flakes and home-manager. Includes all the things I usually need.

## Setup
```
git clone https://github.com/peterc-s/nix-cfg
```
At this point you can edit usernames in the `nix-cfg` directory, like the user account username and 
git user in `home.nix`.
```
sudo cp -r nix-cfg/* /etc/nixos/
sudo nixos-rebuild switch --flake '/etc/nixos#nixos'
```
You can then run `passwd` for the user.

When you first run a shell, powerlevel10k should run you through their configuration process.

GitHub CLI is installed and can be used to auth with GitHub, but you can
also create a new SSH key as described [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

To configure most dotfiles, fork https://github.com/peterc-s/dotfiles and modify the dotfile you want,
then change the URL in the `default.nix` of that software to yours and change the revision to the correct
version.

## TODO
- [ ] Pull Neovim config
- [ ] Pull Kitty config
- [ ] Have the option to have a single git URL passed into all extra config files
