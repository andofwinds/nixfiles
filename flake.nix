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
				# a unique config for my Thinkpads
				thinkpad = lib.nixosSystem { inherit system;
					modules = [
						./host/thinkpad
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
