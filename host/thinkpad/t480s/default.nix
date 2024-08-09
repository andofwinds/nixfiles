{ ... }:
{
	imports = [
		../.
		./hdw.nix
		./packages.nix
	];

	networking.hostName = "T480s";
}
