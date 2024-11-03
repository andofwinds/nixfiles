{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  environment.systemPackages = 
		with pkgs;
		[
			brightnessctl
			wget
			git
			gcc
			zsh-autocomplete
			zsh-autosuggestions
			pkg-config
			nasm
			xorg.libX11
			gnome.adwaita-icon-theme
			zoxide
			openssl
			home-manager
			gtk3.dev
			cmake
			gnumake
			alsa-utils
			glibc_multi
		];
		programs = {
			firefox.enable = true;
			hyprland.enable = true;
		};
		services.flatpak.enable = true;
		services.xserver.exportConfiguration = true;
		fonts.packages = [
			pkgs.nerdfonts
		];
		virtualisation.virtualbox.host.enable = true;

		# Hardware settings for Steam.
		hardware.graphics.enable32Bit = true;
		hardware.pulseaudio.support32Bit = true;
}
