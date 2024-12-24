{ ... }:
{
	imports = [
		../../base/system.nix
		../.
		../../mod/networking.nix
		../../mod/user.nix
		../../mod/openssh.nix

		./hdw.nix
	];

	networking.hostName = "WSC";
}
