{
  config,
  pkgs,
  pkgs-stable,
  zen-browser,
  ...
}:
{
  nixpkgs.config.allowUnfree = true;

  home.packages =
    (with pkgs; [
      discord
      ferdium
      gimp
      glow # command line markdown viewer
      kitty-themes
      openjdk
      signal-desktop
      speedtest-cli
      spotify
      telegram-desktop
      thunderbird
      vscode
      wofi-emoji
      zathura
    ])

    ++

      (with pkgs-stable; [
        chatterino2
      ])

    ++

      [ zen-browser.packages."${pkgs.system}".default ];
}
