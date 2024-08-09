{ ... }:
{
	imports = [
		../../base/system.nix
#		./hdw.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/xgnome.nix

		./nix-ld.nix
	];
}
