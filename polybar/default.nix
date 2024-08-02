{ config, inputs, pkgs, ... }:
{
  services.polybar = {
    enable = true;
    script = "polybar";
    extraConfig = let
      repo = builtins.fetchGit {
          url = "https://github.com/peterc-s/dotfiles";
	  rev = "dcfe9a5b203c66bbff6c1a12494f996867f5e0fa";
      };
      in builtins.readFile "${repo}/polybar/config.ini";
  };
}
