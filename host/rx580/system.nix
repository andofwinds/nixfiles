{ ... }:
{
	imports = [
		../../base/system.nix
		./hdw.nix

		../../mod/xgnome.nix
		../../mod/networking.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/zsh.nix

		./packages.nix
	];

	networking.hostName = "rx580";
}
