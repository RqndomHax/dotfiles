{ config, pkgs, ... }:

{
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    alacritty
    feh
    ranger
    pavucontrol # audio managerm
    direnv
    wget
    neofetch
    htop # utils
    # editors
    helix
    # password manager
    bitwarden
    # audio mixer
    pamixer
    # mullvad
    mullvad
  ];

  fonts.fonts = with pkgs; [
    anonymousPro
    unifont
    noto-fonts-emoji
    (nerdfonts.override {fonts = ["FiraCode" "JetBrainsMono" "UbuntuMono"];})
  ];
  
  fonts.enableDefaultFonts = false;

}
