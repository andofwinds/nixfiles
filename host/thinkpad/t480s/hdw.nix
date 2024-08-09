{ config, lib, pkgs, ... }:
{
	boot = {
			initrd = {
			availableKernelModules = [
				"xhci_pci"
				"nvme"
				"usb_storage"
				"sd_mod"
				"rtsx_pci_sdmmc"
			];
			kernelModules = [ ];
		};
		kernelModules = [ "kvm-intel" ];
		kernelPackages = pkgs.linuxPackages_latest;
		plymouth.enable = true;
	};

	fileSystems = {
		"/boot" = {
			device = "/dev/disk/by-uuid/6A3B-2638";
			fsType = "vfat";
			options = [ "fmask=0022" "dmask=0022" ];
		};
		"/" = {
			device = "/dev/disk/by-uuid/ae3de381-f3e8-440b-91ca-ab40dc7e33f5";
			fsType = "ext4";
		};
	};
  hardware.enableAllFirmware = true;

	swapDevices = [ ];
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
