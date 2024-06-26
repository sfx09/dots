{ pkgs, config, inputs, ... }:
{

  imports = [inputs.catppuccin.homeManagerModules.catppuccin];
  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "blue";
      size = "standard";
      tweaks = [ "normal" ];
    };
  };
}
