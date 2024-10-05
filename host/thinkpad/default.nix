{ ... }:
{
	imports = [
		../../base/system.nix
#		./hdw.nix

		../../mod/networking.nix
		../../mod/bluetooth.nix
		../../mod/user.nix
		../../mod/audio.nix
		../../mod/xserver.nix
#		../../mod/xgnome.nix
		../../mod/hyprland.nix

		./nix-ld.nix
	];
}
