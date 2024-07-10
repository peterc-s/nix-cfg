{ config, inputs, pkgs, ... }:
{
  services.sxhkd = {
    enable = true;
    keybindings = {
      ## wm independent hotkeys

      # terminal emulator
      "ctrl + alt + t" = "kitty";

      # program launcher
      "super + d" = "rofi -show run";

      ## bspwm hotkeys

      # quit/restart bspwm
      "super + alt + {q,r}" = "bspc {quit,wm -r}";

      # kill
      "super {shift +, +} x" = "bspc node -{k,c}";

      # alternate between tiled and monocle
      "super + m" = "bspc desktop -l next";

      # send the newest marked node to the newest preselected node
      "super + y" = "bspc node newest.marked.local -n newest.!automatic.local";

      # swap the current node and the biggest window
      "super + g" = "bspc node -s biggest.window";

      ## state / flags

      # set the window state
      "super + {t,shift + t,s,f}" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";

      # set the node flags
      "super + ctrl + {m,x,y,z}" = "bspc node -g {marked,locked,sticky,private}";

      ## focus/swap
      
      # focus the node in the given direction
      "super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";

      # focus the node for the given path jump
      "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";

      # focus the next/previous window in the current desktop
      "super + {_,shift + }c" = "bspc node -f {next,prev}.local.!hidden.window";

      # focus the next/previous desktop in the current monitor
      "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";

      # focus the last node/desktop
      "super + {grave,Tab}" = "bspc {node,desktop} -f last";

      # focus the older or newer node in the focus history
      "super + {o,i}" = "bspc wm -h off; bspc node {older,newer} -f; bspc wm -h on";

      # focus or send to the given desktop
      "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

      ## preselect

      # preselect the direction
      "super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";

      # preselect the ratio
      "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";

      # cancel the preselection for the focused node
      "super + ctrl + space" = "bspc node -p cancel";

      # cancel the preselection for the focused desktop
      "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

      ## move / resize

      # expand a window by moving one of its side outward
      "super + alt + {h,j,k,l}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";

      # contract a window by moving one of its side inward
      "super + alt + shift + {h,j,k,l}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";

      # move a floating window
      "super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";

      ## programs

      # librewolf
      "super + w" = "librewolf";

      # nemo
      "super + e" = "nemo";

      ## audio
      
      # raise/lower volume
      "XF86Audio{Raise,Lower}Volume" = "pulsemixer --change-volume {+,-}5";

      # mute
      "XF86AudioMute" = "pulsemixer --toggle-mute";

      ## brightness
      "XF86MonBrightness{Up,Down}" = "brightnessctl s 5%{+,-}";

      ## other

      # screenshot
      "Print" = "flameshot gui; sleep 5m; killall flameshot";

      # swap windows in monocle view
      "alt + Tab" = "bspc node -f next.local.window";

      # lock screen
      "ctrl + alt + l" = "betterlockscreen -l dim";
    };
  };
}
