{ config, pkgs, ... }:
{
  programs = {
    bash = {
      bashrcExtra = ''
        echo "Reading $BASH_SOURCE"

        #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
        export SDKMAN_DIR="$HOME/.sdkman"
        [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

        if [ -f ~/.bashrc_private ]; then
          . ~/.bashrc_private
        fi
      '';
      enable = true;
      enableCompletion = true;
      initExtra = ''
        # Keychain
        eval $(keychain --eval --agents ssh id_rsa)

        # Start McFly
        #eval "$(mcfly init bash)"

        # Start Zoxide
        eval "$(zoxide init bash)"
      '';
      profileExtra = ''
        echo "Reading $BASH_SOURCE"

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
