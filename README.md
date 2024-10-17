# ❄️ NixOS Config

### Install
```bash
git clone https://github.com/tintinmaster/nixos-config
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory or choose another directory name
cd $HOME/nix
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```
