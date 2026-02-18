{ pkgs, ... }: {
	virtualisation.libvirtd.enable = true;
  virtualisation.containers.enable = true;
	programs.virt-manager = {
		enable = true;
		package = pkgs.virt-manager;
	};
}
