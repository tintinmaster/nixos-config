{
	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;

		settings = {
			"$mainMod" = "SUPER";
      "$shiftMod" = "SUPER_SHIFT";
			"$terminal" = "kitty";

			monitor = [
			"desc:LG Display 0x06CE, 1920x1200, 0x0, 1"
      "desc:Ancor Communications Inc VS278 F3LMQS135349, preffered, -1920x0, 1"
        "desc:Lenovo Group Limited LEN T27i-10 V5BVX220, preffered, -3000x-500, 1, transform, 1"
			",preffered, auto-right, 1"
			];

			env = [
				"XDG_CURRENT_DESKTOP,Hyprland"
				"XDG_SESSION_TYPE,wayland"
				"XDG_SESSION_DESKTOP,Hyprland"
				"XCURSOR_SIZE,36"
				#"QT_QPA_PLATFORM,wayland"
				"QT_QPA_PLATFORM,xcb"
				"XDG_SCREENSHOTS_DIR,~/screens"
				"NIXOS_OZONE_WL,1"
        "HYPRSHOT_DIR,/home/tim/Pictures/Screenshots"
			];

			debug = {
				disable_logs = false;
				enable_stdout_logs = true;
			};

			input = {
				kb_layout = "de";
				kb_variant = "neo";

				touchpad.natural_scroll = true;
			};

			general = {
				gaps_in = 5;
				gaps_out = 20;
				border_size = 3;

				"col.active_border" = "rgb(44475a) rgb(bd93f9) 90deg";
				"col.inactive_border" = "rgba(44475aaa)";
				"col.nogroup_border" = "rgba(282a36dd)";
				"col.nogroup_border_active" = "rgb(bd93f9) rgb(44475a) 90deg";
				no_border_on_floating = false;

				layout = "dwindle";

			};

			decoration = {
				rounding = 10;

				blur = {
					enabled = true;
					size = 16;
					passes = 2;
				};

        #drop_shadow = true;
        #shadow_range = 60;
        #shadow_render_power = 3;

        #"col.shadow" = "rgba(1E202966)";
			};

			group = {
				groupbar = {
					"col.active" = "rgb(bd93f9) rgb(44475a) 90deg";
					"col.inactive" = "rgba(282a36dd)";
				};
			};


			animations = {
				enabled = true;

				bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
# bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

				animation = [
					"windows,     1, 7,  myBezier"
						"windowsOut,  1, 7,  default, popin 80%"
						"border,      1, 10, default"
						"borderangle, 1, 8,  default"
						"fade,        1, 7,  default"
						"workspaces,  1, 6,  default"
            "specialWorkspace, 1, 3, default, slidevert"
				];
			};

			dwindle = {
				pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
					preserve_split = true; # you probably want this
			};

			gestures = {
				workspace_swipe = true;
				workspace_swipe_fingers = 3;
				workspace_swipe_invert = true;
				workspace_swipe_distance = 200;
				workspace_swipe_forever = true;
			};


			misc = {
				animate_manual_resizes = true;
				animate_mouse_windowdragging = true;
				enable_swallow = true;
				disable_hyprland_logo = true;
			};


      windowrulev2 = [
				"float, class:^(imv)$"
				"float, class:^(mpv)$"
        "workspace special, class:^(Ferdium)$"
        "bordercolor rgb(ff5555),xwayland:1" # check if window is xwayland
        "idleinhibit fullscreen, fullscreen:1"
      ];

			exec-once = [
				"swww init"
				"swww img ~/Pictures/dracula-nixos.png"
				"dunst"
				"waybar"
				"hypridle"
        "[workspace special silent] ferdium"
        "[workspace 1] $terminal btop"
        "[workspace 2 silent] zen"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
			];

			bind = [
				"$mainMod, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"

				"$mainMod, T, exec, $terminal"
				"$mainMod, C, killactive,"
				"$mainMod, M, exit,"
				"$mainMod, E, exec, dolphin"
				"$mainMod, F, togglefloating,"
				"$mainMod, D, exec, wofi --show drun"
        "$mainMod, X, exec, wofi-emoji"
				"$mainMod, P, pseudo, # dwindle"
				"$mainMod, J, togglesplit, # dwindle"
				"$mainMod, L, exec, pidof hyprlock || hyprlock > ~/hyprlock.log"
        "$mainMod, Q, exec, ~/nix/scripts/art.sh > ~/testing.log"
        "ALT, X, togglespecialworkspace"



        # Screenshot a window
        "$mainMod, PRINT, exec, hyprshot -m window"
        # Screenshot a monitor
        ", PRINT, exec, hyprshot -m output"
        # Screenshot a region
        "$shiftMod, PRINT, exec, hyprshot -m region"

# Move focus with mainMod + arrow keys
				"$mainMod, left,  movefocus, l"
				"$mainMod, right, movefocus, r"
				"$mainMod, up,    movefocus, u"
				"$mainMod, down,  movefocus, d"

# Moving windows
				"$mainMod SHIFT, left,  swapwindow, l"
				"$mainMod SHIFT, right, swapwindow, r"
				"$mainMod SHIFT, up,    swapwindow, u"
				"$mainMod SHIFT, down,  swapwindow, d"

# Window resizing                     X  Y
				"$mainMod CTRL, left,  resizeactive, -60 0"
				"$mainMod CTRL, right, resizeactive,  60 0"
				"$mainMod CTRL, up,    resizeactive,  0 -60"
				"$mainMod CTRL, down,  resizeactive,  0  60"

# Switch workspaces with mainMod + [0-9]
				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"

# Move active window to a workspace with mainMod + SHIFT + [0-9]
				"$mainMod SHIFT, 1, movetoworkspacesilent, 1"
				"$mainMod SHIFT, 2, movetoworkspacesilent, 2"
				"$mainMod SHIFT, 3, movetoworkspacesilent, 3"
				"$mainMod SHIFT, 4, movetoworkspacesilent, 4"
				"$mainMod SHIFT, 5, movetoworkspacesilent, 5"
				"$mainMod SHIFT, 6, movetoworkspacesilent, 6"
				"$mainMod SHIFT, 7, movetoworkspacesilent, 7"
				"$mainMod SHIFT, 8, movetoworkspacesilent, 8"
				"$mainMod SHIFT, 9, movetoworkspacesilent, 9"
				"$mainMod SHIFT, 0, movetoworkspacesilent, 10"

# Scroll through existing workspaces with mainMod + scroll
				"$mainMod, mouse_down, workspace, e+1"
				"$mainMod, mouse_up, workspace, e-1"

# Keyboard backlight
				#"$mainMod, F8, exec, brightnessctl -d *::kbd_backlight set +33%"
				#"$mainMod, F7, exec, brightnessctl -d *::kbd_backlight set 33%-"

# Volume and Media Control
				", XF86AudioRaiseVolume, exec, pamixer -i 5 "
				", XF86AudioLowerVolume, exec, pamixer -d 5 "
				", XF86AudioMute, exec, pamixer -t"
				", XF86AudioMicMute, exec, pamixer --default-source -t"

# Brightness control
				", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
				", XF86MonBrightnessUp, exec, brightnessctl set +5% "

# Configuration files
				#''$mainMod SHIFT, N, exec, alacritty -e sh -c "rb"''
				#''$mainMod SHIFT, C, exec, alacritty -e sh -c "conf"''
				#''$mainMod SHIFT, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
				#''$mainMod SHIFT, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
				#'', Print, exec, grim -g "$(slurp)" - | swappy -f -''

# Waybar
				"$mainMod, B, exec, pkill -SIGUSR1 waybar"
				"$mainMod, W, exec, pkill -SIGUSR2 waybar"

# Disable all effects
				"$mainMod Shift, G, exec, ~/.config/hypr/gamemode.sh "
			];

# Move/resize windows with mainMod + LMB/RMB and dragging
			bindm = [
				"$mainMod, mouse:272, movewindow"
				"$mainMod, mouse:273, resizewindow"
			];
		};
	};
}
