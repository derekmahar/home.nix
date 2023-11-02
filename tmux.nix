{ config, pkgs, ... }:
{
  programs = {
    tmux = {
      enable = true;
      escapeTime= 10;
      extraConfig = ''
        set-option -g default-command "''${SHELL}"
        set-option -sa terminal-features ",xterm-256color:RGB"
      '';
      mouse = true;
      terminal = "screen-256color";
    };
  };
}
