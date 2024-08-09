{ pkgs, inputs, ... }:
let
	base16 = import ./base16.nix;
in {
	programs.home-manager.enable = true;
  imports = [
		(import ./configs { base16 = base16; })
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
			vlc
 			cava
			ghex
			arduino-ide
			gnome-tweaks
			python3
			wl-clipboard
			unzip
			swww
			grim
			slurp
			typescript
			qemu
			rustup
    ];
  };
}
