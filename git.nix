{ config, pkgs, ... }:
{
  programs = {
    git = {
      enable = true;
      settings = {
        core = {
          quotepath = false;
        };
        user = {
          name = "Derek Mahar";
          email = "derek.mahar@proton.me";
        };
      };
    };
  };
}
