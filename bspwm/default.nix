{ config, inputs, pkgs, ...}:
{
  xsession.windowManager.bspwm = {
    enable = true;
    alwaysResetDesktops = true;
    extraConfigEarly = ''pgrep -x sxhkd > /dev/null || sxhkd &'';
    monitors = {
      eDP-1 = [
        "1"
	"2"
	"3"
	"4"
      ];
    };
    settings = {
      border_width         = 2;
      window_gap           = 12;
      normal_border_color  = "#282A2E";
      focused_border_color = "#707880";
      split_ratio          = 0.52;
      borderless_monocle   = true;
      gapless_monocle      = true;
      pointer_action1      = "move";
      pointer_action2      = "resize_corner";
    };
    startupPrograms = [
      "sxhkd"
      "picom --config $HOME/.config/picom/picom.conf"
      "dunst"
      "nitrogen --restore"
      "polybar"
    ];
  };
}
