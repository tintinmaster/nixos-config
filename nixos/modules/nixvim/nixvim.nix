{
  imports = [
    ./opts.nix
    ./plugins/plugins-bundle.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.dracula.enable = true;
  };
}