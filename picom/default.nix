{ config, inputs, pkgs, ... }:
{
  services.picom = {
    enable = true;
    settings = {
    	shadow = false;
	#shadow-radius = 7;
	#shadow-offset-x = -7;
	#shadow-offset-y = -7;
	#shadow-exclude = [
	#  "name = 'Notification'"
	#  "class_g = 'Conky'"
	#  "class_g ?= 'Notify-osd'"
	#  "class_g = 'Cairo-clock'"
	#  "_GTK_FRAME_EXTENTS@:c"
	#];

	fading = false;
	#fade-in-step = 0.03;
	#fade-out-step = 0.03;

	inactive-opacity = 0.95;
	frame-opacity = 0.9;
	inactive-opacity-override = false;
        force-exclude = [
	  "class_g = 'Cairo-clock'"
	];

	corner-radius = 6;
	round-borders = 1;
	rounded-corners-exclude= [
	  "window_type = 'dock'"
	  "window_type = 'desktop'"
	];

	#blur-kern = "3x3box";
	blur-background-exclude = [
	  "window_type = 'dock'"
	  "window_type = 'desktop'"
	  "_GTK_FRAME_EXTENTS@:c"
	];

	backend = "glx";
	dithered-present = false;
	vsync = true;
	mark-wmwin-focused = true;
	mark-ovredir-focused = true;
	detect-rounded-corners = true;
	detect-client-opacity = true;
	detect-transient = true;
	glx-no-stencil = true;
	glx-no-rebind-pixmap = false;
	use-damage = true;
	log-level = "warn";

	wintypes = {
	  tooltip = {
	    fade = true;
	    shadow = true;
	    opacity = 0.75;
	    focus = true;
	    full-shadow = false;
	  };

	  dock = {
	    shadow = false;
	    clip-shadow-above = true;
	  };

	  dnd = {
	    shadow = false;
	  };

	  popup_menu = {
	    opacity = 0.8;
	  };

	  dropdown_menu = {
	    opacity = 0.8;
	  };
	};
      };
    };
}
