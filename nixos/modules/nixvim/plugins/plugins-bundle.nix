{
  imports = [
    ./cmp/autopairs.nix
    ./cmp/cmp-copilot.nix
    ./cmp/cmp.nix
    ./cmp/lspkind.nix
    
    ./editor/neo-tree.nix
    ./editor/treesitter.nix
    ./editor/render-markdown.nix

    ./git/gitsigns.nix
    ./git/lazygit.nix

    ./lsp/fidget.nix
    ./lsp/lsp.nix

    ./snippets/luasnip.nix

    ./ui/bufferline.nix
    ./ui/lualine.nix
    ./ui/startup.nix

    ./utils/mini.nix
    ./utils/telescope.nix
    ./utils/toggleterm.nix
    ./utils/whichkey.nix
  ];
}
