{ inputs, config, pkgs, ... }:
{
    imports = [
      ./bspwm
      ./sxhkd
      ./polybar
      ./picom
      ./kitty
      ./neovim
    ];

    home.username = "pete";
    home.homeDirectory = "/home/pete";

    programs.home-manager.enable = true;

    home.packages = with pkgs; [
        # archives
        zip
        xz
        unzip
        p7zip

        # utils
        ripgrep
        fzf
        zoxide
        neofetch
	brightnessctl
	pulsemixer
	flameshot
	rofi
	timg
	nitrogen
	vlc
	gh

        # system monitoring
        btop
        iotop
        iftop
        strace
        ltrace
        lsof

        # networking
        mtr
        iperf3
        dnsutils
        ldns
        aria2
        socat
        nmap
        ipcalc

        # misc
        file
        which
        tree
        gnused
        gnutar
        gawk
        zstd
        gnupg

        # nix
        nix-output-monitor

        # system
        sysstat
        lm_sensors
        ethtool
        pciutils
        usbutils

        # silly
        cowsay
        lolcat
    ];

    ## programs that require some config
    
    programs.git = {
        enable    = true;
        userName  = "peterc-s";
        userEmail = "petercs@skiff.com";
    };

    programs.zsh = {
	enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
	syntaxHighlighting.enable = true;
	initExtra = "source ~/.p10k.zsh";

	history = {
	    size = 10000;
            path = "${config.xdg.dataHome}/zsh/history";
        };
    };

    programs.librewolf = {
      enable = true;
      settings = {
        "identity.fxaccounts.enabled" = true;
      };
    };

    systemd.user.startServices = "sd-switch";

    home.stateVersion = "24.05";
}
            
