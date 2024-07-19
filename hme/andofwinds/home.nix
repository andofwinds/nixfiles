{ pkgs, inputs, ... }:
{
programs.home-manager.enable = true;
  imports = [
		./homepak/hyprland.nix
  ];
  home = {
    username = "andofwinds";
    homeDirectory = "/home/andofwinds";
    stateVersion = "24.11";

    packages = with pkgs; [
      inputs.neowind.packages."${pkgs.system}".default
			create-react-app
			telegram-desktop
     	nodejs
      rustup
			vlc
 			cava
			flatpak
			fastfetch
			ghex
			arduino-ide
			gnome-tweaks
			python3
			wl-clipboard
    ];
  };

	programs.kitty = {
		enable = true;
		font = {
			package = pkgs.nerdfonts;
			name = "JetBrainsMono Nerd Font";
			size = 11;
		};
	};
}
