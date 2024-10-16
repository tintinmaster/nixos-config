{ configr, pkgs, home, ...} : {
	nixpkgs.config.allowUnfree = true;
	
	home.packages = with pkgs; [
		chatterino2
		signal-desktop
		spotify
		thunderbird
		zathura
    ferdium
    kitty-themes
    vscodium
	];
}
