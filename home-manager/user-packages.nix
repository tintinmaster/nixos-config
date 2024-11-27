{ configr, pkgs, home, ...} : {
	nixpkgs.config.allowUnfree = true;
	
	home.packages = with pkgs; [
		chatterino2
    ferdium
    kitty-themes
		signal-desktop
		spotify
		thunderbird
    vscodium
		zathura
	];
}
