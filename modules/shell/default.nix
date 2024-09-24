{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    bat
    bottom
    choose
    du-dust
    eva
    eza
    fd
    fish
    fzf
    hyperfine
    jq
    just
    procs
    ripgrep
    rsync
    sd
    skim
    starship
    tealdeer
    tokei
    watchexec
    xdg-utils
    zoxide

    jetbrains.idea-community
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    VISUAL = "nvim";
    PAGER = "bat";
  };

  xdg.userDirs = {
    enable = true;
    desktop = "${config.home.homeDirectory}";
  };

  programs = {
    fish.enable = true;
    starship = {
      enable = true;
      settings = {
        gcloud.disabled = true; 
      };
    };
    zoxide.enable = true;
    man.generateCaches = false;
  };

  home.file.".config/fish/conf.d" = {
    source = ./config;
  };

  home.file.".local/bin" = {
    source = ./scripts;
  };
}
