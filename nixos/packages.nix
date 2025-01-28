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
    (python3.withPackages (ps: with ps; [
      pip
      numpy
      scipy
      jupyter
      notebook
      python-dotenv
      pandas
      requests 
      pyquery 
    ]))
    cachix
    devenv
    gcc
    clang-tools
    vim
    jetbrains.clion
    jetbrains.pycharm-professional
    jetbrains.rust-rover

    #Writing
    typst
    tinymist
    typstyle

    # CLI utils
    bluez
    bluez-tools
    btop
    udisks
    fastfetch
    fd
    flashrom
    file
    fzf
    git
    htop
    imv
    imagemagick
    lazygit
    neofetch
    playerctl
    ripgrep
    tio
    tree
    unzip
    wget
    zip

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
    hyprshade
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
    darktable
    davfs2
    enpass
    home-manager
    kitty
    xdg-utils
    wireguard-tools

    #Master thesis
    gpsd
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.symbols-only
    #(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
