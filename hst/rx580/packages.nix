{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		wget
		vim
		gcc
		pkg-config
    adwaita-icon-theme
		zoxide
		home-manager
		cmake
		gnumake
		flatpak
		zsh-autosuggestions
    zsh-autocomplete
	];
}
