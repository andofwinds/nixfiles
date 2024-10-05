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
		sessionVariables = {
			GEODE_SDK = "/home/andofwinds/Documents/Geode";
			ANDROID_NDK_ROOT = "/home/andofwinds/android-ndk";
			PATH = "/home/andofwinds/homepath:/home/andofwinds/.cargo/bin:$PATH";
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
 			cava
			gnome.ghex
			arduino-ide
			gnome.gnome-tweaks
			python3
			wl-clipboard
			unzip
			swww
			grim
			slurp
			typescript
			qemu
			clang
			glibc_multi
			wineWowPackages.full
			mc

#			-bios ${OVMF.fd}/FV/OVMF.fd 	\
			(pkgs.writeShellScriptBin "qemu-system-x86_64-efi" ''
				qemu-system-x86_64 							\
					-enable-kvm 									\
					-drive if=pflash,format=raw,readonly=on,file=${OVMF.fd}/FV/OVMF_CODE.fd \
					-drive if=pflash,format=raw,readonly=on,file=${OVMF.fd}/FV/OVMF_VARS.fd \
					"$@"
			'')
    ];
  };
}
