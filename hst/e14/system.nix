{ ... }:
{
	imports = [
		../../bse/sys.nix
		# TODO hdw.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/zsh.nix

		./packages.nix
	];

	networking.hostName = "e14";
}
