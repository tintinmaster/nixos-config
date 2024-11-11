{ pkgs, ... }: {
	programs.zsh.enable = true;

	users.extraGroups.plugdev = {};
  users.groups.usrp = {};

	users = {
		defaultUserShell = pkgs.zsh;
		
		users.tim = {
			isNormalUser = true;
			description = "Tim";
			extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "plugdev" "dialout" "lp" "usrp"];
			packages = with pkgs; [];
		};
	};
}
