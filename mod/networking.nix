{ lib, ... }:
{

  networking = {
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
		wireless.iwd.enable = true;
		networkmanager.wifi.backend	= "iwd";
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
