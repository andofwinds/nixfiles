{ config, lib, ... }:
{
	boot = {
		initrd = {
			availableKernelModules = [
				"xhci_pci"
				"ahci"
				"nvme"
				"usb_storage"
				"sd_mod"
			];
			kernelModules = [ ];
		};
		kernelModules = [ "kvm-intel" ];
		extraModulePackages = [ ];
	};

	fileSystems = {
		"/" = {
			device = "/dev/disk/by-uuid/2ca45a28-97fc-4650-aa90-90348c6e5405";
			fsType = "ext4";
		};
		"/boot" = {
			device = "/dev/disk/by-uuid/1B35-DE02";
			fsType = "vfat";
			options = [ "fmask=0022" "dmask=0022" ];
		};
	};

	swapDevices = [ ];

	nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
	hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
