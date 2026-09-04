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
            inputs.spicetify-nix.homeManagerModules.spicetify
            ./homeModules/spicetify.nix
            ./homeModules/niriconfig.nix
            ./homeModules/direnv.nix
    ];

    home = {
        packages = with pkgs; import ./homeModules/packages.nix {inherit pkgs;};

        sessionVariables = {
            EDITOR = "nvim";
            VISUAL = "nvim";
        };

        username = "arend";
        homeDirectory = "/home/arend";

        stateVersion = "26.05";
    };
}
