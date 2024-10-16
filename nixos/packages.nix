{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
		#Desktop Apps
		firefox
		obsidian
		zoom-us

		# Coding stuff
		(python3.withPackages (ps: with ps; [ requests pyquery ]))
		cachix
		devenv
		gcc
		vim

		# CLI utils
		bluez
		bluez-tools
		btop
		fastfetch
		file
		git
		htop
		imv
		lazygit
		neofetch
		tree
		unzip
		wget
		zip
    fzf

		# Wayland stauff
		brightnessctl
    cliphist
		libsForQt5.qt5.qtwayland
		qt5.qtwayland
		qt6.qtwayland
    wl-clipboard
		xwayland

		# WMs and stuff
		dunst 		#Notifications
		hypridle
		hyprland
		hyprlock
    hyprshot
		seatd
		swww 		  #Wallpaper
		waybar
		wofi
		xdg-desktop-portal-hyprland

		# Sound
		pamixer
		pavucontrol
		pipewire
		pulseaudio

		#Other
		enpass
		home-manager
		kitty
		xdg-utils
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		font-awesome
		powerline-fonts
		powerline-symbols
		(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
}
