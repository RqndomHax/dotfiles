{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    cmake
    git
    gcc
    bintools-unwrapped
    maven
    gnumake
    tree
    ncurses
    which
    valgrind-light
    man-pages
  ];
}