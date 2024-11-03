{ config, lib, pkgs, ...}:
{
	boot = {
		initrd = {
      availableKernelModules = [
				"xhci_pci"
				"ahci"
				"usbhid"
				"usb_storage"
				"sd_mod"
			];
			kernelModules = [ ];
		};
    kernelPackages = pkgs.linuxPackages_6_10;
	};

	fileSystems = {
		"/boot" = {
			device = "/dev/disk/by-uuid/A229-2DED";
			fsType = "vfat";
			options = [ "fmask=0022" "dmask=0022" ];
		};
		"/" = {
			device = "/dev/disk/by-uuid/a5185dd2-20f3-4316-9052-2bf420623511";
			fsType = "ext4";
		};
	};
  hardware.enableAllFirmware = true;

	swapDevices = [ ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
