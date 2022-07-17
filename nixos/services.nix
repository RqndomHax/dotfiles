{ config, pkgs, ... }:

{
  services = {
    logind.extraConfig = ''
      # don’t shutdown when power button is short-pressed
      HandlePowerKey=ignore
    '';

    zfs.trim.enable = true;
    zfs.autoSnapshot.enable = true;
    zfs.autoScrub.enable = true;
    mullvad-vpn.enable = true;

    xserver = {
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

    openssh.enable = true;
    vnstat.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      jack.enable = true;
      pulse.enable = true;
    };
  };
}
