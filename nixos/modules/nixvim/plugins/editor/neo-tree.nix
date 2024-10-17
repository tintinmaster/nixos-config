{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    
    closeIfLastWindow = true;
    enableGitStatus = true;
    enableDiagnostics = true;
    filesystem.followCurrentFile.enabled = true;
  };
}
