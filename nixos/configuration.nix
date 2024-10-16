{inputs, ...}: {
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  networking.hostName = "nixos"; # Define your hostname.

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  nix.extraOptions = ''
  	trusted-users = root tim
  '';

  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.theme = "maldives";

  hardware.ipu6.enable = true;
  hardware.ipu6.platform = "ipu6ep";

  system.stateVersion = "24.05"; # Don't change it 
}
