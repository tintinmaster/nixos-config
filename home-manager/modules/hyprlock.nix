{
	programs.hyprlock = {
		enable = true;

		settings = {
			general = {
				disable_loading_bar = true;
				grace = 0;
				no_fade_in = false;
			};

			background = [
				{
					path = "/home/tim/Pictures/Wallpaper/dracula-nixos.png";
					blur_passes = 3;
					blur_size = 8;
				}
			];

			input-field = [
				{
					size = "200, 50";
					position = "0, -50";
					halign = "center";
					valign = "center";
					monitor ="";
					dots_center = true;
					dots_size = 0.3;
					fade_on_empty = false;
					font_color = "rgb(202, 211, 245)";
					inner_color = "rgb(91, 96, 120)";
					outer_color = "rgb(24, 25, 38)";
					outline_thickness = 5;
					shadow_passes = 2;
					placehodler_text = "<i>Input Password...</i>";
					fail_color = "rgb(204, 34, 34)"; 
					fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
					fail_timeout = 2000;
					fail_transition = 300;				}
			];
		};
	};
}
