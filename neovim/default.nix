{ config, inputs, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      packer-nvim
    ];
  };
}
