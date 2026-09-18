{pkgs, ...}:
{
    programs.nvchad = {
        enable = true;
        extraConfig = ''
            vim.opt.tabstop = 4 
            vim.opt.shiftwidth = 4 
            vim.opt.expandtab  = true
            vim.opt.smartindent = true
            vim.opt.relativenumber = true


            vim.keymap.set("n", "Z", function()
                    vim.diagnostic.open_float()
                    end, { desc = "LSP Diagnostic" })

            vim.keymap.set("n", "gd", function()
                    vim.lsp.buf.definition()
                    end, { desc = "LSP definition" })

            local extra = vim.env.PYRIGHT_EXTRA_PATHS

            vim.lsp.config('pyright', {
                    settings = {
                python = {
                  pythonPath = vim.fn.exepath('python3'),
                  analysis = {
                    extraPaths = extra and vim.split(extra, ':', { trimempty = true }) or {},
                  },
                },
              },
            })

            vim.lsp.enable('pyright')
            vim.lsp.enable('nil_ls')
            '';
        extraPackages = with pkgs; [
            lua-language-server
            pyright
            nil
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
