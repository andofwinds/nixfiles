{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  environment.systemPackages = 
		with pkgs;
		[
			brightnessctl
      wget
      git
      gcc
      zsh-autocomplete
      zsh-autosuggestions
      pkg-config
      nasm
      xorg.libX11
      adwaita-icon-theme
      zoxide
      openssl
      home-manager
			gtk3.dev
			cmake
			gnumake
		];
    programs.firefox.enable = true;
		programs.hyprland.enable = true;
    fonts.packages = [
      pkgs.nerdfonts
    ];
}
