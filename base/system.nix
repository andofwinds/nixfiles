{ pkgs, ... }:
{
  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";

	i18n = {
		defaultLocale = "en_US.UTF-8";
		inputMethod = {
			enabled = "fcitx5";
			fcitx5.addons = with pkgs; [ fcitx5-mozc ];
		};
	};
  time.timeZone = "Europe/Moscow";

  boot.loader = {
	systemd-boot.enable = true;
    efi = {
			canTouchEfiVariables = true;
		};
  };
}
