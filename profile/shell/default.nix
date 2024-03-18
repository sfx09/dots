{ pkgs, ... }:
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
    jq
    just
    procs
    ripgrep
    sd
    skim
    starship
    tokei
    watchexec
    zoxide
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    VISUAL = "nvim";
    PAGER = "bat";
  };

  programs = {
    fish = {
      enable = true;
      shellAbbrs = {
        ls = "eza";
        la = "eza -a";
        ll = "eza -l";
        lx = "eza -la";
        cd = "z";
        vim = "nvim";
        zel = "zellij";
        zrp = "zellij action rename-pane";
        zrt = "zellij action rename-tab";
        zrs = "zellij action rename-session";
      };
      loginShellInit = ''test (tty) = "/dev/tty1"; and exec Hyprland'';
      interactiveShellInit = ''
        set -g fish_key_bindings fish_vi_key_bindings
        bind -M insert \cy accept-autosuggestion
        set fish_greeting
      '';
    };
    starship.enable = true;
    zoxide.enable = true;
    man.generateCaches = false;
  };
}
