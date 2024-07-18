{ ... }:
{
  imports = [
    ../../bse/sys.nix             # Base template for all configs
    ./hdw.nix   									# Hardware config

    ../../mod/xgnome.nix          # Gnome (X11)
    ../../mod/networking.nix      # Networking via NetworkManager
    ../../mod/bluetooth.nix       # Bluetooth
    ../../mod/user.nix            # User andofwinds
    ../../mod/audio.nix           # Audio via PipeWire & Alsa
    ../../mod/zsh.nix             # Shell (ZSH)

    ./packages.nix        # Packages set for current system

  ];

  networking.hostName = "t490";

	networking.wireless.networks = {
		"HUAWEI nova 11i" = {
			psk = "ivai3866";
		};
	};
}
