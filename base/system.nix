{ ... }:
{
  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Europe/Moscow";

  boot.loader = {
		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
		};
    efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot/efi";
		};
  };
}
