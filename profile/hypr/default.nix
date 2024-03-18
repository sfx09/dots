{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    hyprlock
  ];

  xdg.configFile."hypr" = { source = ./.; };
}
