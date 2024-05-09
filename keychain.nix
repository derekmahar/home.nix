{ config, pkgs, ... }:
{
  programs = {
    keychain = {
      enable = true;
      enableBashIntegration = true;
      extraFlags = ["--ignore-missing" "--quiet"];
      keys = ["id_rsa" "id_ed25519"];
    };
  };
}
