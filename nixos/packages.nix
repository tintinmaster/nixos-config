{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    #Desktop Apps
    firefox
    chromium
    obsidian
    zoom-us
    vlc

    # Coding stuff
    (python3.withPackages (
      ps: with ps; [
        pip
        numpy
        scipy
        jupyter
        notebook
        python-dotenv
        pandas
        requests
        pyquery
        udiskie
      ]
    ))
    cachix
    devenv
    gcc
    clang-tools
    ollama
    vim
    jetbrains.pycharm-professional
    #jetbrains.rust-rover
    (jetbrains.plugins.addPlugins jetbrains.clion [
      "ideavim"
      "rainbow-brackets"
    ])

    #Writing
    typst
    tinymist
    typstyle

    # CLI utils
    bluez
    bluez-tools
    btop
    docker-compose
    udisks
    fastfetch
    fd
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
    sshfs
    tio
    tldr
    tree
    unzip
    wget
    yazi
    zip

    # Wayland stauff
    brightnessctl
    cliphist
    libsForQt5.qt5.qtwayland
    qt5.qtwayland
    qt6.qtwayland
    wl-clipboard
    xwayland
    swayidle

    # WMs and stuff
    dunst # Notifications
    hypridle
    hyprland
    hyprlock
    hyprshade
    hyprshot
    seatd
    swww # Wallpaper
    waybar
    wofi
    xdg-desktop-portal-hyprland

    # Sound
    pamixer
    pavucontrol
    pipewire
    pulseaudio

    #Other
    davfs2
    enpass
    home-manager
    kitty
    xdg-utils
    wireguard-tools

    tor-browser
    deluged

    #Master thesis
    gpsd

    #master
    ghidra
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
    nerd-fonts.fira-code
    #(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
