{
	imports = [
		./zsh.nix
		./modules/bundle.nix
		./user-packages.nix
	];

	home = {
		username = "tim";
		homeDirectory = "/home/tim";
		stateVersion = "24.05";
	};
}
