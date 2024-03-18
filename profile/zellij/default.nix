{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    zellij
    inputs.zjstatus.packages.${pkgs.system}.default
  ];

  xdg.configFile."zellij" = { source = ./.; };
}
