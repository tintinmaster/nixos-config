{
  programs.nixvim.plugins = {
    lsp = {
      enable = false;
      #inlayHints = true;
      servers = {
        clangd.enable = true;
        html.enable = true;
        #marksman.enable = true;
        pyright.enable = true;
        #rust_analyzer.enable = true;
      };
    };
  };
}
