{ config, pkgs, ... }:

{
  networking.hostId = "87cea77d";
  networking.hostName = "rqndom-nixos";

  networking.interfaces.enp1s0.useDHCP = true;
  networking.interfaces.wlp0s20f3.useDHCP = true;

  networking.networkmanager.enable = true;
}
