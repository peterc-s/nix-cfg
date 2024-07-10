{ config, inputs, pkgs, ...}:
{
    programs.kitty = {
        enable = true;
	settings = {
	  font_family = "MesloLGS NF";
	  enable_audio_bell = false;
	  background_opacity = "0.9";
	};
    };
}
