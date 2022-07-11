{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    dmenu
    picom
    xmobar
    conky
    polybarFull
  ];
}
