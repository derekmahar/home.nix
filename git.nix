{ config, pkgs, ... }:
{
  programs = {
    git = {
      enable = true;
      userName = "Derek Mahar";
      userEmail = "derek.mahar@proton.me";
    };
  };
}
