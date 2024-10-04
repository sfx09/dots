{ pkgs, ... }:
{
  home.packages = with pkgs; [
    keepassxc
    zathura
  ];

  services.syncthing.enable = true;
}
