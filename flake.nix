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
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

	};

	outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs: 

	let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
		pkgs-stable = nixpkgs-stable.legacyPackages.${system};
	in {

		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [
				./nixos/configuration.nix
				inputs.nixvim.nixosModules.nixvim
			];
			specialArgs = {
				inherit pkgs-stable;
			};
		};

		homeConfigurations.tim = home-manager.lib.homeManagerConfiguration {
			inherit pkgs;
			modules = [ ./home-manager/home.nix ];
			extraSpecialArgs = {
				inherit pkgs-stable;
			};
		};
	};
}
