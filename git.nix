{ config, pkgs, ... }:
{
  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "Derek Mahar";
          email = "derek.mahar@proton.me";
        };
      };
    };
  };
}
