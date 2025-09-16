{ pkgs, config, ... }:
{
  systemd.user.services.lid-watcher = {
    Unit = {
      Description = "Watch lid and disable internal display";
      After = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.swayidle}/bin/swayidle -w timeout 1 ${config.home.homeDirectory}/nix/scripts/lid-handler.sh";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
