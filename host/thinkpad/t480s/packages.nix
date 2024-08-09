{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

	environment.systemPackages = 
		with pkgs;
		[
			wget
			git
			gcc
			home-manager
			adwaita-icon-theme
		];
	
	programs = {
		firefox.enable = true;
	};
	services.flatpak.enable = true;
	fonts.packages = [
		pkgs.nerdfonts
	];

}
