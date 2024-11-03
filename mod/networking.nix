{ lib, ... }:
{
  networking = {
    networkmanager.enable = true;
    wireless.enable = false;
    useDHCP = lib.mkDefault true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 8000 22 ];
      allowedUDPPortRanges = [
        { from = 4000; to = 4010; }
        { from = 8000; to = 8010; }
      ];
    };
  };
}
