{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        no_fade_in = false;
        no_fade_out = false;
        hide_cursor = false;
        grace = 0;
        disable_loading_bar = false;
      };

      background = [
        {
          path = "/home/tim/Pictures/Wallpaper/dracula-nixos.png";
          blur_passes = 2;
          contrast = 1;
          brightness = 0.6;
          vibrancy = 0.2;
          vibrancy_darkness = 0.2;
        }
      ];

      # Input field
      input-field = [
        {
          monitor = "";
          size = "220, 60";
          position = "0, -400";
          halign = "center";
          valign = "center";
          dots_center = true;
          dots_size = 0.2;
          dots_spacing = 0.35;
          fade_on_empty = false;
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          outer_color = "rgb(24, 25, 38)";
          outline_thickness = 2;
          shadow_passes = 2;
          placeholder_text = "<i>Input Password...</i>";
          fail_color = "rgb(204, 34, 34)"; 
          fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
          #fail_timeout = 2000;
          fail_transition = 300;				
        }
      ];


      image = [
        {
          monitor = "";
          size = 256;
          rounding = 6;
          border_size = 3;
          border_color = "rgb(133,180,234)";
          rotate = 0;
          reload_time = 2;
          reload_cmd = "~/nix/scripts/art.sh";
          position = "0, -25";
          halign = "center";
          valign = "center";
        }
      ];

      label = [
        {
          monitor = "";
          text = 
          ''
          cmd[update:1000] echo "$(date +"%A, %B %d")"
          '';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 22;
          font_family = "JetBrains Mono";
          position = "0, 300";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = 
          ''
          cmd[update:1000] echo "$(date +"%-H:%M")"
          '';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 95;
          font_family = "JetBrains Mono Extrabold";
          position = "0, 150";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = 
          ''
          cmd[update:1000] echo "$(~/nix/scripts/songdetails.sh --title)"
          '';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 17;
          font_family = "JetBrains Mono";
          position = "0, -200";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = 
          ''
          cmd[update:1000] echo "$(~/nix/scripts/songdetails.sh --artist)"
          '';
          color = "rgba(209, 207, 207, 0.75)";
          font_size = 15;
          font_family = "JetBrains Mono";
          position = "0, -230";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
