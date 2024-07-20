{ ... }:
{
	imports = [
		../../base/system.nix
		./hdw.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/zsh.nix

		./packages.nix
	];

	networking.hostName = "think";
	system.stateVersion = "24.05";
}
