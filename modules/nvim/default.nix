{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    neovim

    # Language Servers
    nodePackages.bash-language-server
    clang-tools_17
    csharp-ls
    gopls
    lua-language-server
    nodePackages.pyright
    nodePackages.typescript-language-server
    zls

    # Formatters
    ruff
    nodePackages.prettier
    stylua

    wl-clipboard
  ];

  xdg.configFile."nvim" = { source = ./.; };
}
