{ config, inputs, pkgs, ... }:
{
  services.sxhkd = {
    enable = true;
    extraConfig = let
      repo = builtins.fetchGit {
        url = "https://github.com/peterc-s/dotfiles";
        rev = "fb390486bde370ef75cb94ad876fbdaf9cdbcb52";
      };
      in "${repo}/sxhkd/sxhkdrc";
  };
}
