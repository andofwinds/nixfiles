{ config, lib, pkgs, ... }:
{
  boot = {
    initrd = {
      availableKernelModules = [
        "xhci_pci"
	"thunderbolt"
	"nvme"
	"usb_storage"
	"sd_mod"
        "rtsx_pci_sdmmc"
      ];
      kernelModules = [ ];
    };
#    kernelModules = [
#      "iwlwifi"
#      "rtlwifi"
#      "rtl8192cu"
#      "rtl8192c_common"
#    ];
    kernelPackages = pkgs.linuxPackages_latest;
    plymouth.enable = true;
  };

  fileSystems = {
    "/boot" = {
      device = "/dev/disk/by-uuid/D2A9-FA1F";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
    "/" = {
      device = "/dev/disk/by-uuid/f46a3e3a-8d29-48f9-98e1-1276fac1c6d2";
      fsType = "ext4";
    };
  };
  hardware.enableAllFirmware = true;

  swapDevices = [ ];
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
