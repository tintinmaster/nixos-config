{
  imports = [
    ./nix.nix

    ./editor/neo-tree.nix
    ./editor/todo-comments.nix
    ./editor/treesitter.nix
    ./editor/undotree.nix

    ./git/gitsigns.nix
    ./git/lazygit.nix

    #./lsp/lsp.nix Broken build for me

    ./ui/bufferline.nix
    ./ui/lualine.nix

    ./utils/telescope.nix
    ./utils/whichkey.nix
  ];
}


