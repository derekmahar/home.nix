{ config, pkgs, ... }:
{
  imports = [
    ./bash.nix
    ./broot.nix
    ./fzf.nix
    ./git.nix
    ./keychain.nix
    ./mcfly.nix
    ./tmux.nix
    ./user.nix
    ./vim.nix
    ./zoxide.nix
  ];

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    amber
    bash
    bat
    binutils
    cargo
    cointop
    clifm
    cmake
    croc
    csvq
    csvtk
    curl
    dateutils
    delta
    dive
    duckdb
    elvish
    emacs
    erlang
    eza
    fastfetch
    fd
    file
    frogmouth
    gawk
    gawkextlib.csv
    gcc
    gleam
    gmp
    gnumake
    gnupatch
    go
    gox
    goawk
    gojq
    gradle
    hello
    janet
    kotlin
    lf
    lua
    miller
    nawk
    nb
    ninja
    nmap
    nushell
    oil
    openjdk_headless
    opentofu
    pandoc
    pet
    python313
    ranger
    rclone
    rlwrap
    rsync
    rustc
    rustfmt
    sd
    shc
    sqlite-interactive
    tealdeer
    tidy-viewer
    tig
    unzip
    usql
    uv
    vifm
    visidata
    w3m
    wormhole-rs
    xh
    xonsh
    zip

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ubuntu/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs = {
    home-manager = {
      # Let Home Manager install and manage itself.
      enable = true;
    };
  };
}
