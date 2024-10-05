{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcc
    gnumake

    keepassxc
    zathura
  ];

  services.syncthing.enable = true;
}
