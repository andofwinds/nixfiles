{ ... }:
{
	imports = [
		../.
		../../.

		./hdw.nix
	];

	networking.hostName = "E14";
}
