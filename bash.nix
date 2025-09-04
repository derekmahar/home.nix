{ config, pkgs, ... }:
{
  programs = {
    bash = {
      bashrcExtra = ''
        #echo "Reading $BASH_SOURCE bashrcExtra"

        # Enable ble.sh for atuin.
        [[ $- == *i* ]] && source -- "$(blesh-share)"/ble.sh --attach=none

        if [ -f ~/.bashrc_private ]; then
          . ~/.bashrc_private
        fi

        # Enable ble.sh for atuin.
        [[ ! ''${BLE_VERSION-} ]] || ble-attach

        # Load atuin shell plugin for Bash.
        eval "$(atuin init bash)"
      '';
      enable = true;
      enableCompletion = true;
      initExtra = ''
        #echo "Reading $BASH_SOURCE initExtra"
      '';
      profileExtra = ''
        #echo "Reading $BASH_SOURCE profileExtra"

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
