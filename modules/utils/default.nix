{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bun
    cargo
    dotnet-sdk_8
    clang_17
    go
    lua
    nodejs_20
    python3Minimal
    uv
    zig

    keepassxc
    zathura

    brightnessctl
    jq
    pamixer
    socat
    unzip
    zip
  ];

  services.syncthing.enable = true;
}
