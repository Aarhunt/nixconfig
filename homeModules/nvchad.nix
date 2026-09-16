{
    programs.nvchad = {
        enable = true;
        extraConfig = ''
            vim.opt.tabstop = 4 
            vim.opt.shiftwidth = 4 
            vim.opt.expandtab  = true
            vim.opt.smartindent = true
            vim.opt.relativenumber = true
            '';
        extraPackages = with pkgs; [
                lua-language-server
            pyright
        ];
        chadrcConfig = ''
            local M = {}
        M.base46 = {
            theme = "matugen",
            transparency = true,
        }
        return M
        '';
    };
}
