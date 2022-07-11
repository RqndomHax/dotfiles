{ config, pkgs, ... }:

{
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    alacritty
    dmenu
    xmobar
    conky
    polybarFull
    lemonbar
    feh
    picom
    unclutter
    scrot
    xclip
    xscreensaver
    ranger
    pavucontrol # leftwm
    direnv
    wget
    neofetch
    appimage-run
    redshift
    killall
    htop # utils
    # web browsers
    firefox
    chromium
    surf
    # communication
    discord
    # editors
    helix
    emacs
    vscode
    # music apps
    spotify
    cava
    spotifyd
    spotify-tui
    tty-clock
    # commits security
    pinentry
    gnupg
    # tor
    tor
    torsocks
    # docker containers
    docker
    docker-compose
    lm_sensors
    # server file manager
    filezilla
    sshfs
    # password manager
    bitwarden
    # VM
    virt-manager
    qemu
    libguestfs
    # file info
    exiftool
    # EPITECH INSTALLATION
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

  fonts.fonts = with pkgs; [
    anonymousPro
    unifont
    (nerdfonts.override {fonts = ["FiraCode" "JetBrainsMono"];})
  ];
  
  enableDefaultFonts = false;

}
