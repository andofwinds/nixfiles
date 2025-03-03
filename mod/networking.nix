{ lib, ... }:
{
  networking = {
    networkmanager.enable = true;
    wireless.enable = false;
    useDHCP = lib.mkDefault true;
		nameservers = [
			"8.8.8.8"
			"8.8.4.4"
		];
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 8000 22 1080 ];
      allowedUDPPortRanges = [
        { from = 4000; to = 4010; }
        { from = 8000; to = 8010; }
      ];
    };
  };
}
