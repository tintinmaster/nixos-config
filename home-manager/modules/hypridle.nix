{
	services.hypridle = {
		enable = true;

		settings = {
			general = {
				lock_cmd = "pidof hyprlock || hyprlock";
				before_sleep_cmd = "loginctl lock-session";
				after_sleep_cmd = "hyprctl dispatch dpms on";
			};
			
			listener = [
				{
					timeout = 150;
					on-timeout = "brightnessctl -s set 10";
					on-resume= "brightnessctl -r";
				}

				{
					timeout = 150;
					on-timeout = "brightnessctl -sd dell::kbd_backlight set 0";
					on-resume= "brightnessctl -rd dell::kbd_backlight";
				}

				{
					timeout = 300;
					on-timeout = "loginctl lock-session";
				}
				
				{
					timeout = 360;
					on-timeout = "hyprctl disptach dpms off";
					on-resume = "hyprctl dipsatch dpms on";
				}

				#{
				#	timeout = 1800;
				#	on-timeout = "systemctl suspend";
				#}
			];
		};
	};
}
