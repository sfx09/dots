{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    dunst
    acpi
  ];

  xdg.configFile."dunst" = { source = ./.; };
}
