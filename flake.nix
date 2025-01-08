{
	description = "My system configuration";

	inputs = {

    #Only stable
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable/";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

		home-manager = {
      #Only stable
      #url = "github:nix-community/home-manager/release-24.11";
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			# If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
			# url = "github:nix-community/nixvim/nixos-24.11";
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, home-manager, ... }@inputs: 

		let
			system = "x86_64-linux";
		in {

		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [
				./nixos/configuration.nix
				inputs.nixvim.nixosModules.nixvim
			];
		};

		homeConfigurations.tim = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
