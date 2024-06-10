{ config, pkgs, ... }:
{
  programs = {
    bash = {
      bashrcExtra = ''
        #echo "Reading $BASH_SOURCE"

        if [ -f ~/.bashrc_private ]; then
          . ~/.bashrc_private
        fi
      '';
      enable = true;
      enableCompletion = true;
      initExtra = ''
        #echo "Reading $BASH_SOURCE"
      '';
      profileExtra = ''
        #echo "Reading $BASH_SOURCE"

        if [ -d "$HOME/bin" ]
        then
          PATH="$HOME/bin:$PATH"
        fi

        if [ -d "$HOME/.local/bin" ]
        then
          PATH="$HOME/.local/bin:$PATH"
        fi

        if [ -d "$HOME/.cargo/bin" ]
        then
          PATH="$HOME/.cargo/bin:$PATH"
        fi
      '';
      sessionVariables = {
        AWKLIBPATH="$HOME/.nix-profile/lib/gawk";
      };
      shellAliases = {
        cat = "bat";
        ll = "ls -alF";
        ls = "exa";
      };
    };
  };
}
