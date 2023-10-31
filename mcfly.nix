{ config, pkgs, ... }:
{
  programs = {
    mcfly = {
      enable = true;
      enableBashIntegration = false;
    };
  };
}
