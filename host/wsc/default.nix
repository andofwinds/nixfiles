{ ... }:
{
	imports = [
		../../base/system.nix
		../.
		../../mod/networking.nix
		../../mod/user.nix
		../nix-ld.nix

		./hdw.nix
	];

	networking.hostName = "WSC";
}
