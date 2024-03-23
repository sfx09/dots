{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    alacritty
    source-code-pro
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  xdg.configFile."alacritty" = { source = ./.; };
}
