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
			adwaita-icon-theme
			zoxide
			openssl
			home-manager
			gtk3.dev
			cmake
			gnumake
			alsa-utils
		];
		programs = {
			firefox.enable = true;
			hyprland.enable = true;
		};
		services.flatpak.enable = true;
		fonts.packages = [
			pkgs.nerdfonts
		];
}
