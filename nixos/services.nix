{ config, pkgs, ... }:

{
  
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';

  services.zfs.trim.enable = true;
  services.zfs.autoSnapshot.enable = true;
  services.zfs.autoScrub.enable = true;


  services.xserver = {
    enable = true;
    layout = "fr";
    libinput.enable = true;

    videoDrivers = [ "modesetting" ];
    useGlamor = true;

    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+leftwm";
    };

    windowManager.leftwm = {
      enable = true;
    };
  };
  
  services.openssh.enable = true;
  services.vnstat.enable = true;
}
