{ config, pkgs, ... }:
{
  programs = {
    broot = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
