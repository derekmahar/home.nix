{ config, pkgs, ... }:
{
  programs = {
    vim = {
      enable = true;
      plugins = with pkgs.vimPlugins; [
        fzf-vim
      ];
      settings = {
        expandtab = true;
        shiftwidth = 4;
        #softtabstop = 4;
        tabstop = 4;
      };
      extraConfig = ''
        " Key mappings
        nnoremap gb :buffers<cr>:buffer<space>
        nnoremap gd :bd<cr>
        nnoremap gn :bn<cr>
        nnoremap gp :bp<cr>

        " Settings
        color evening
        set background=dark
        set softtabstop=4
      '';
    };
  };
}
