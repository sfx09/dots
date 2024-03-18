{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    eww
    libnotify
    socat
    jq
    brightnessctl
    pamixer
    playerctl
    material-design-icons
  ];

  xdg.configFile."eww" = { source = ./.; };
}
