default:
  just -l

# NixOS Commands

# Rebuild NixOS
build:
  sudo nixos-rebuild switch --flake .

# Update flake file
update:
  nix flake update

# Format files
fmt:
  nix fmt
  stylua profile/

# Remove obselete nix links
clean:
  sudo nix-collect-garbage --delete-old
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

# Symlink config directory for rapid iterations
hack:
  just reset
  ln -s ${PWD}/profile/alacritty ${HOME}/.config/alacritty
  ln -s ${PWD}/profile/eww ${HOME}/.config/eww
  ln -s ${PWD}/profile/dunst ${HOME}/.config/dunst
  ln -s ${PWD}/profile/hypr ${HOME}/.config/hypr
  ln -s ${PWD}/profile/nvim ${HOME}/.config/nvim
  ln -s ${PWD}/profile/zellij ${HOME}/.config/zellij

# Reset config directory to prepare for re-deployment
reset:
  rm -rf ${HOME}/.config/{alacritty,dunst,eww,hypr,nvim,zellij}