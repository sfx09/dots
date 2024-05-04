{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    tmux
  ];

  xdg.configFile."tmux" = { source = ./.; };
}
