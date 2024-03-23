{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bun
    cargo
    dotnet-sdk_8
    gcc
    go
    lua
    nodejs_20
    python3Minimal
    zig

    keepassxc
    zathura

    zip
    unzip
  ];

  services.syncthing.enable = true;
}
