{ ... }:
{
	imports = [
		../.
		../../.
		./hdw.nix
	];

	networking.hostName = "T490";
}
