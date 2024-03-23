{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    git
    gitui
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "aleth@tuta.io";
      userName = "sfx09";
      extraConfig = {
        init.defaultBranch = "main";
        credential.helper = "store";
      };
    };
  };
}
