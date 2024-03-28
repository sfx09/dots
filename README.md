# INSTALLATION

* Boot into your system from the NixOS installation media

* Connect to the internet

* Use nixstrap to bootstrap your NixOS system
```
    sudo -i
    nix --experimental-features 'nix-command flakes' run github:sfx09/nixstrap -- -f github:sfx09/dots#lyra
```
