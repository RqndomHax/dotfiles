{ pkgs
, config
, ...
}:
# graphical session configuration
# includes programs and services that work on both Wayland and X
{
  imports = [
  ];
  
  home.stateVersion = "22.05";

  home.sessionVariables = {
    # make java apps work in tiling WMs
    _JAVA_AWT_WM_NONREPARENTING = "1";
    # make apps aware of ibus
    GTK_IM_MODULE = "ibus";
    XMODIFIERS = "@im=ibus";
    QT_IM_MODULE = "ibus";
  };

  home.packages = with pkgs; [
    # archives
    unzip
    unrar
    # file managers
    file
    gh
    # torrents
    transmission-remote-gtk
    # misc
    libnotify
    xournalpp
  ];

  home.pointerCursor = {
    package = pkgs.quintom-cursor-theme;
    name = "Quintom_Ink";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  manual = {
    manpages.enable = true;
  };

  xdg.configFile =
    let
      gtkconf = ''
        decoration, decoration:backdrop, window {
          box-shadow: none;
          border: none;
          margin: 0;
        }
      '';
    in
    {
      "gtk-3.0/gtk.css".text = gtkconf;
      "gtk-4.0/gtk.css".text = gtkconf;
    };

  gtk = {
    enable = true;

    font = {
      name = "Roboto";
      package = pkgs.roboto;
    };

    gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    theme = {
      name = "Catppuccin-orange-dark-compact";
      package = pkgs.catppuccin-gtk.override { size = "compact"; };
    };
  };

  programs = {
    firefox = {
      enable = true;
    };

    git = {
      enable = true;
      delta.enable = true;
      ignores = [ "*~" "*result*" ".direnv" ];
      signing = {
        key = "D7719A405EE1B315";
        signByDefault = true;
      };
      userEmail = "paul.codepro@gmail.com";
      userName = "Paul COMTE";
    };

    gpg = {
      enable = true;
      homedir = "${config.xdg.dataHome}/gnupg";
    };
  };

  services = {
    gpg-agent = {
      enable = true;
    };

  };
}
