{
	services.xserver = {
		enable = true;
		windowManager.herbstluftwm.enable = true;

		xkb.layout = "de";
		xkb.variant = "neo";

		videoDrivers = [ "modesetting" ];
	};
}
