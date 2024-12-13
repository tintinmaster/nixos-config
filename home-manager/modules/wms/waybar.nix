{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "8 20 -12 20";

        modules-left = ["hyprland/workspaces" "hyprland/language" "keyboard-state" "hyprland/submap" "network"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "custom/mem" "cpu" "backlight" "battery" "tray"];

        # Modules LEFT
        "hyprland/workspaces" = {
          disable-scroll = true;
        };

        "hyprland/language" = {
          min-length = 5;
          tooltip = true;
        };

        "keyboard-state" = {
            #numlock = true;
            #capslock = true;
            format = "{icon}";
            #binding-keys = "[42, 54]";
            #format-icons = {
            #    locked = " ";
            #    unlocked = "";
            #};
        };

        "network" = {
          #interface = "wlp020f3";
          interval = 5;
          format = "{ifname}";
          format-wifi = "{essid} ({signalStrength}%)  ";
          format-disoconnected = "No Connection";
          tooltip-format = "{ifname} via {gwaddr}";
          tooltip-format-wifi = ''
            {essid} ({signalStrength}%)    {frequency} GHz
            {ipaddr} via {gwaddr}
            {bandwidthDownBits}↑{bandwidthUpBits}↓'';
        };


        #Modules Center
        "clock" = {
            interval = 1;
            # timezone = "America/New_York";
            format = "{:%A, %d %b, %T}";
            #locale = "de_DE";

            tooltip= true;
            tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
            #tooltip-format = "<tt><small>{calendar}</small></tt>";
            calendar = {
                mode = "year";
                mode-mon-col = 3;
                weeks-pos = "left";

              format = {
                months =     "<span color='#ffead3'><b>{}</b></span>";
                days =       "<span color='#ecc6d9'><b>{}</b></span>";
                weeks =      "<span color='#99ffdd'><b>W{}</b></span>";
                weekdays =   "<span color='#ffcc66'><b>{}</b></span>";
                today =      "<span color='#ff6699'><b><u>{}</u></b></span>";
              };
            };
        };

        #Modules Right
        "pulseaudio" = {
            # scroll-step = 1; # %, can be a float
            reverse-scrolling = 1;
            format = "{volume}% {icon}  {format_source}";
            format-bluetooth = "{volume}% {icon} {format_source}";
            format-bluetooth-muted = " {icon} {format_source}";
            format-muted = " {format_source}";
            format-source = "{volume}% ";
            format-source-muted = "";
            format-icons = {
                headphone = "";
                hands-free = "";
                headset = "";
                phone = "";
                portable = "";
                car = "";
                default = ["" "" ""];
            };
            on-click = "pavucontrol";
            min-length = 13;
        };

        "custom/mem" = {
            format = "{} ";
            interval = 3;
            exec = "free -h | awk '/Mem:/{printf $3}'";
            tooltip = false;
        };

        "cpu" = {
          interval = 2;
          format = "{usage}% ";
          min-length = 6;
        };

        "temperature" = {
            # thermal-zone = 2;
            # hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
            critical-threshold = 80;
            # format-critical = "{temperatureC}°C {icon}";
            format = "{temperatureC}°C {icon}";
            format-icons = ["" "" "" "" ""];
            tooltip = false;
        };

        "backlight" = {
            device = "intel_backlight";
            format = "{percent}% {icon}";
            format-icons = [""];
            min-length = 7;
        };

        "battery" = {
            states = {
                warning = 30;
                critical = 15;
            };
            format = "{capacity}% {icon}";
            format-charging = "{capacity}% ";
            format-plugged = "{capacity}% ";
            format-alt = "{time} {icon}";
            format-icons = ["" "" "" "" "" "" "" "" "" ""];
            #on-update = "$HOME/.config/waybar/scripts/check_battery.sh";
        };

        "tray" = {
            icon-size = 16;
            spacing = 0;
        };

        };
      };
  
    style = ''
            * {
                border: none;
                border-radius: 0;
                /* `otf-font-awesome` is required to be installed for icons */
                font-family: FiraCode Nerd Font Mono;
                /* font-family: Noto Mono; */
                font-weight: bold; 
                min-height: 20px;
            }

            window#waybar {
                background: transparent;
            }

            window#waybar.hidden {
                opacity: 0.2;
            }

            tooltip {
                background: #6272a4; 
                border-radius: 10px;
            }

            #workspaces {
                margin-right: 8px;
                border-radius: 10px;
                transition: none;
                background: #383c4a;
            }

            #workspaces button {
                transition: none;
                color: #7c818c;
                background: transparent;
                padding: 5px;
                font-size: 18px;
            }

            #workspaces button.persistent {
                color: #7c818c;
                font-size: 12px;
            }

            /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
            #workspaces button:hover {
                transition: none;
                box-shadow: inherit;
                text-shadow: inherit;
                border-radius: inherit;
                color: #383c4a;
                background: #7c818c;
            }

            #workspaces button.active {
                background: #4e5263;
                color: white;
                border-radius: inherit;
            }

            #language {
                padding-left: 16px;
                padding-right: 8px;
                border-radius: 10px 0px 0px 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #keyboard-state {
                margin-right: 8px;
                padding-right: 16px;
                border-radius: 0px 10px 10px 0px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #custom-pacman {
                padding-left: 16px;
                padding-right: 8px;
                border-radius: 10px 0px 0px 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #custom-mail {
                margin-right: 8px;
                padding-right: 16px;
                border-radius: 0px 10px 10px 0px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #submap {
                padding-left: 16px;
                padding-right: 16px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #clock {
                padding-left: 16px;
                padding-right: 16px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #network{
                margin-right: 8px;
                padding-left: 8px;
                padding-right: 8px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #pulseaudio {
                margin-right: 8px;
                padding-left: 8px;
                padding-right: 8px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #pulseaudio.muted {
                background-color: #90b1b1;
                color: #2a5c45;
            }

            #custom-mem {
                margin-right: 8px;
                padding-left: 16px;
                padding-right: 16px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #cpu {
                margin-right: 8px;
                padding-left: 8px;
                padding-right: 8px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #temperature {
                margin-right: 8px;
                padding-left: 16px;
                padding-right: 16px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #temperature.critical {
                background-color: #eb4d4b;
            }

            #backlight {
                margin-right: 8px;
                padding-left: 8px;
                padding-right: 8px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #battery {
                margin-right: 8px;
                padding-left: 8px;
                padding-right: 8px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            #battery.charging {
                color: #ffffff;
                background-color: #26A65B;
            }

            #battery.warning:not(.charging) {
                background-color: #ffbe61;
                color: black;
            }

            #battery.critical:not(.charging) {
                background-color: #f53c3c;
                color: #ffffff;
                animation-name: blink;
                animation-duration: 0.5s;
                animation-timing-function: linear;
                animation-iteration-count: infinite;
                animation-direction: alternate;
            }

            #tray {
                padding-left: 16px;
                padding-right: 16px;
                border-radius: 10px;
                transition: none;
                color: #ffffff;
                background: #383c4a;
            }

            @keyframes blink {
                to {
                    background-color: #ffffff;
                    color: #000000;
                }
            }'';
  };
}

