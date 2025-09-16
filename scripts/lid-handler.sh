LID_STATE=$(cat /proc/acpi/button/lid/LID*/state | awk '{ print $2 }')

if [ "$LID_STATE" = "closed" ]; then
    hyprctl dispatch dpms off eDP-1
else
    hyprctl dispatch dpms on eDP-1
fi

