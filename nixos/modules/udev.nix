{ pkgs, ... }: {
	services.udev.extraRules = ''
# If the system is not a video device, we skip these rules by jumping to the end
SUBSYSTEM!="video4linux", GOTO="hide_cam_end"
#ATTR{name}=="Intel MIPI Camera", GOTO="hide_cam_end" # This line cannot be used as it would move too much stuff and then the camera would not work. Instead, we just move the dummy camera,
# I found its name with udevadm info -q all -a /dev/video0
# If this is not the dummy video, we also skip these rules.
ATTR{name}!="Dummy video device (0x0000)", GOTO="hide_cam_end"
ACTION=="add", RUN+="${pkgs.coreutils}/bin/mkdir -p /dev/not-for-user"
ACTION=="add", RUN+="${pkgs.coreutils}/bin/mv -f $env{DEVNAME} /dev/not-for-user/"

ACTION=="remove", RUN+="${pkgs.coreutils}/bin/rm -f /dev/not-for-user/$name"
ACTION=="remove", RUN+="${pkgs.coreutils}/bin/rm -f /dev/not-for-user/$env{ID_SERIAL}"

LABEL="hide_cam_end"

#USB
SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"
  '';
}
