{ inputs, ... }:
{
  inputs = [
    inputs.home-manager-nixosModules.default
  ];

  programs.hyprland = {
    enable = true;
  };
}
