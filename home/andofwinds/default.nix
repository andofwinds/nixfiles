{ pkgs, inputs, ... }:
let
	base16 = import ./base16.nix;
	aa64Pkgs = pkgs.pkgsCross.aarch64-embedded;

	aa64Packages = with aa64Pkgs; [
	];
in {
  nixpkgs.config.allowUnfree = true;
	nixpkgs.config.allowUnsupportedSystem = true;
	nixpkgs.config.android_sdk.accept_license = true;
	programs.home-manager.enable = true;
  imports = [
		(import ./configs { base16 = base16; })
  ];
  home = {
    username = "andofwinds";
    homeDirectory = "/home/andofwinds";
    stateVersion = "24.11";
		sessionVariables = {
			GEODE_SDK = "/home/andofwinds/Documents/Geode";
			ANDROID_NDK_ROOT = "/home/andofwinds/android-ndk";
			PATH = "/home/andofwinds/bin:/home/andofwinds/GCC62/bin:/home/andofwinds/.cargo/bin:$PATH";
			LD_LIBRARY_PATH = "$NIX_LD_LIBRARY_PATH";
		};

		sessionPath = [
			"$HOME/.cargo/bin"
		];


    packages = with pkgs; [
      inputs.neowind.packages."${pkgs.system}".default
			create-react-app
			telegram-desktop
     	nodejs
			vlc
			ghex
			gnome-tweaks
			python3
			wl-clipboard
			unzip
			swww
			grim
			slurp
			typescript
			wineWowPackages.full
			mc
			nautilus
			fritzing
			arduino
			android-studio
			zip
			jetbrains.idea-community
			openjdk
			clang
			lld
			jq
			qemu
			zed-editor
			vscode
			dtc
    ] ++ aa64Packages;
  };
}
