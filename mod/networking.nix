{ lib, ... }:
{
  networking = {
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 8000 ];
      allowedUDPPortRanges = [
        { from = 4000; to = 4010; }
        { from = 8000; to = 8010; }
      ];
    };
  };
}
