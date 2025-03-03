{
    description = "NixOS configuraion set for T490 / E14 / D14 / RPi-3B / i3-8100";

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
				E14 = lib.nixosSystem { inherit system;
   					modules = [
  						./host/thinkpad/e14
   					];
				};

				T480s = lib.nixosSystem { inherit system;
   					modules = [
  						./host/thinkpad/t480s
   					];
				};

				T490 = lib.nixosSystem { inherit system;
   					modules = [
  						./host/thinkpad/t490
   					];
				};

				# Config for my server.
				WSC = lib.nixosSystem { inherit system;
   					modules = [
  						./host/wsc
   					];
				};

				# RX580-based PcBuild
				rx580 = lib.nixosSystem { inherit system;
   					modules = [
  						./host/rx580
  						];
				};
            };

            homeConfigurations = {
                andofwinds = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    extraSpecialArgs = { inherit inputs; };
                    modules = [
                        ./home/andofwinds
         			];
                };
            };
        };
    #
}
