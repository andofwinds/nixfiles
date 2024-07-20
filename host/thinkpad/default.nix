{ ... }:
{
	imports = [
		../../base/system.nix
		./hdw.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix

		./packages.nix
	];

	networking.hostName = "thinkpad";
}
