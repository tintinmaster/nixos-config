{
	hardware.pulseaudio.enable = false;
	
	# rtkit is optional but recommended
	security.rtkit.enable = true;

	services.pipewire = {
		enable = true;

		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};
}
