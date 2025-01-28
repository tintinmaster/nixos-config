{ configr, pkgs, pkgs-stable, home, ...} : {
	nixpkgs.config.allowUnfree = true;
	
  home.packages = 
  ( with pkgs; [
    ferdium
    kitty-themes
		signal-desktop
    speedtest-cli
		spotify
		thunderbird
    vscodium
		zathura
  ])

  ++

  ( with pkgs-stable; [
    chatterino2
  ]);

}
