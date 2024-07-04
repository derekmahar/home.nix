{ config, pkgs, ... }:
{
  programs = {
    vim = {
      enable = true;
      plugins = with pkgs.vimPlugins; [
        fzf-vim
#        tabular
        vim-unimpaired
      ];
      settings = {
        expandtab = true;
        shiftwidth = 4;
        tabstop = 4;
      };
      extraConfig = ''
        " Key mappings

        " Buffer navigation
        nnoremap gb :buffers<cr>:buffer<space>
        nnoremap gd :bd<cr>
        nnoremap gn :bn<cr>
        nnoremap gp :bp<cr>

        " Window splits
        nmap <leader>sw<left>  :topleft vnew<CR>
        nmap <leader>sw<right> :botright vnew<CR>
        nmap <leader>sw<up>    :topleft new<CR>
        nmap <leader>sw<down>  :botright new<CR>

        " Buffer splits
        nmap <leader>s<left>   :leftabove vnew<CR>
        nmap <leader>s<right>  :rightbelow vnew<CR>
        nmap <leader>s<up>     :leftabove new<CR>
        nmap <leader>s<down>   :rightbelow new<CR>

        " Fzf.vim
        nnoremap <silent> <C-f> :Files<CR>
        nnoremap <silent> <Leader>f :Rg<CR>

        " Settings
        color evening
        set background=dark
        set softtabstop=4
      '';
    };
  };
}
