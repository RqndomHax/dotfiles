{ config, pkgs, ... }:

{
  users.defaultUserShell = pkgs.fish;
 
  users.users.rqndomhax = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ]; # Enable ‘sudo’ for the user.
  };
}
