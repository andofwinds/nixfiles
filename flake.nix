{
  description = "NixOS configuraion set for T490 / D14 / RPi-3B / i3-8100";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    neowind.url = "github:andofwinds/neowind";
  };

  outputs = { ... } @ inputs: 
    with inputs;
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = import nixpkgs { inherit system; };
    in {
      nixosConfigurations = {
        # Thinkpad
        t490 = lib.nixosSystem { inherit system;
          modules = [
            ./hst/thinkpad-t490/system.nix
          ];
        };
				
				# RX580-based PcBuild
				rx580 = lib.nixosSystem { inherit system;
					modules = [
						./hst/rx580/system.nix
					];
				};
      };

      homeConfigurations = {
        andofwinds = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
						./hme/andofwinds/home.nix
          ];
        };
      };
    };
  #
}
