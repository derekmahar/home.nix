{ config, pkgs, ... }:
{
  programs = {
    tmux = {
      enable = true;
      extraConfig = ''
        set-option -g default-command "\$\{SHELL\}"
      '';
    };
  };
}
