{ base16, ... }:
{
	imports = [
		./zsh.nix
		./zoxide.nix
		( import ./alacritty.nix { base16 = base16; } )
		( import ./hyprland { base16 = base16; } )
	];
}
