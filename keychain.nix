{ config, pkgs, ... }:
{
  programs = {
    keychain = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
