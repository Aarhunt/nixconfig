{pkgs, ...}:
{
    programs.fish = {
        enable = true;

        shellAliases = {
            alias ll="ls -AghF";
            alias la="ls -aA";
            alias lsls="ls -Qm";

            alias nivm="nvim";
            alias opengit="git remote -v | head -n 1 | awk -F ':' '{print \$2}' | awk -F '.' '{print \"https://github.com/\"\$1}' | xargs xdg-open";

            update = "sudo nixos-rebuild switch";
            clean = "nix-collect-garbage -d";
        };

        loginShellInit = "starship init fish | source";
        interactiveShellInit = ''
        set fish_greeting
        '';
    };

    programs.zoxide = {
        enable = true;
        enableFishIntegration= true;
        options = [
            "--cmd cd"
        ];
    };

    programs.fzf = {
        enable = true;
        enableFishIntegration= true;
    };

    programs.yazi = {
        enable = true;
    };

    programs.tmux = {
        enable = true;
        shell = "${pkgs.fish}/bin/fish";
        terminal = "tmux-256color";
        mouse = true;
    };

}
