{ config, pkgs, ... }:
{
  programs = {
    git = {
      enable = true;
      settings = {
        core = {
          quotepath = false;
        };
        init = {
          defaultBranch = "main";
        };
        user = {
          name = "Derek Mahar";
          email = "derek.mahar@proton.me";
        };
      };
    };
  };
}
