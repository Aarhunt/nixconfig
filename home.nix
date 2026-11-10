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
        ./homeModules/niriconfig.nix
        ./homeModules/direnv.nix
        ./homeModules/nix-your-shell.nix
        ./homeModules/thunderbird.nix
         inputs.nix-craftapps.homeManagerModules.default 
        ./homeModules/craftapps.nix
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

    xdg = {
        mimeApps = {
            enable = true;
            defaultApplications = {
                "inode/directory" = "yazi-open.desktop";
                "application/zip" = "yazi-open.desktop";
            };
        };

        desktopEntries.yazi-open = {
          name = "Yazi File Manager";
          genericName = "File Manager";
          # Replace 'kitty' with 'foot' or 'alacritty' depending on what you use in Niri
          exec = "alacritty -e yazi %u"; 
          mimeType = [ "inode/directory" "application/zip"];
          terminal = false;
          categories = [ "System" "FileTransfer" ];
        };
    };
}
