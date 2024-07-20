{ base16, ... }:
{
	imports = [
		./zsh
		./zoxide.nix
		( import ./alacritty.nix { base16 = base16; } )
		( import ./hyprland { base16 = base16; } )
	];
}
