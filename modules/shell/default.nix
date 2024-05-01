{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    bandwhich
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
    zoxide
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
    download = "${config.home.homeDirectory}/downloads";
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
        zd = "zellij kill-all-sessions --yes; zellij delete-all-sessions --yes";
      };
      loginShellInit = ''test (tty) = "/dev/tty1"; and exec Hyprland'';
      interactiveShellInit = ''
        set -g fish_key_bindings fish_vi_key_bindings
        bind -M insert \cy accept-autosuggestion
        bind -M insert \cf 'sessionizer; commandline -f repaint'
        bind -M insert \cp up-or-search
        bind -M insert \cn down-or-search
        set fish_greeting
      '';
    };
    starship.enable = true;
    zoxide.enable = true;
    man.generateCaches = false;
  };
}
