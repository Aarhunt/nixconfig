{ lib, pkgs, inputs, system, ... }:

{
    imports = [
        inputs.nix4nvchad.homeManagerModules.default
            inputs.noctalia.homeModules.default
            ./homeModules/shell.nix
            ./homeModules/ssh.nix
            ./homeModules/git.nix
            ./homeModules/nvchad.nix
            ./homeModules/starship.nix
            ./homeModules/noctalia.nix
            ./homeModules/obsidian.nix
            ./homeModules/alacritty.nix
    ];

    home = {
        packages = with pkgs; [
            # inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
                neovim-remote
        ];

        sessionVariables = {
            EDITOR = "nvim";
            VISUAL = "nvim";
        };

        username = "arend";
        homeDirectory = "/home/arend";

        stateVersion = "26.05";
    };
}
