{ pkgs, lib, ... }:
{
	imports = [
		./systemd.nix
		./nix-ld.nix
	];

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
			icu
			glib
			bison
			flex
			gmp
			libmpc
			mpfr
			texinfo
			isl
		];

		programs = {
			firefox.enable = true;
			hyprland.enable = true;
		};
		services.flatpak.enable = true;
		services.xserver.exportConfiguration = true;
		fonts.packages = [ ]
			++ builtins.filter
					lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
		virtualisation.virtualbox.host.enable = true;

		# Hardware settings for Steam.
		hardware.graphics.enable32Bit = true;
		hardware.pulseaudio.support32Bit = true;
}
