{ ... }:
{
	imports = [
		../.

		./hdw.nix
		./packages.nix
	];

	networking.hostName = "E14";
}