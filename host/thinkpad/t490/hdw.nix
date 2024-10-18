{ config, lib, pkgs, ... }:
{
	boot = {
		initrd = {
			availableKernelModules = [
				"xhci_pci"
				"ahci"
				"nvme"
				"usbhid"
				"usb_storage"
				"sd_mod"
			];

			kernelModules = [ ];
		};
		kernelModules = [ "kvm-intel" ];
		extraModulePackages = [ ];
	};

	fileSystems = {
		"/boot" = {
			device = "/dev/disk/by-uuid/B002-E997";
			fsType = "vfat";
			options = [ "fmask=0022" "dmask=0022" ];
		};
		"/" = {
			device = "/dev/disk/by-uuid/2bf03252-dfc8-4981-86b4-0c248d773f61";
			fsType = "ext4";
		};
	};

	swapDevices = [ ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
