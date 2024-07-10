{ config, inputs, pkgs, ... }:
{
  services.polybar = {
    enable = true;
    script = "polybar";
    extraConfig = let
      repo = builtins.fetchGit {
          url = "https://github.com/peterc-s/dotfiles";
	  rev = "17f74b47c52fc5829641c2d5c9f2a4f5542620f6";
      };
      in builtins.readFile "${repo}/polybar/config.ini";
  };
}
