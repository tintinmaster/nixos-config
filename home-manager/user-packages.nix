{ config, pkgs, pkgs-stable, zen-browser, ...} : {
	nixpkgs.config.allowUnfree = true;
	
  home.packages = 
  ( with pkgs; [
    ferdium
    kitty-themes
		signal-desktop
    speedtest-cli
		spotify
    gimp
		thunderbird
    vscodium
    wofi-emoji
		zathura
    freecad-wayland
  ])

  ++

  ( with pkgs-stable; [
    chatterino2
  ])

  ++

  [ zen-browser.packages."${pkgs.system}".default ];
}
