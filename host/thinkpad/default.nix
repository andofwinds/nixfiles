{ ... }:
{
	imports = [
		../../base/system.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/xserver.nix
		../../mod/hyprland.nix

		./nix-ld.nix
	];
}
