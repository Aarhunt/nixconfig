{pkgs, ...}:
{
    programs.fish = {
        enable = true;

        shellAliases = {
            ll="ls -AghF";
            la="ls -aA";
            lsls="ls -Qm";

            nivm="nvim";
            opengit="git remote -v | head -n 1 | awk -F ':' '{print \$2}' | awk -F '.' '{print \"https://github.com/\"\$1}' | xargs xdg-open";

            update = "sudo nixos-rebuild switch";
            clean = "nix-collect-garbage -d";
        };

        loginShellInit = "starship init fish | source";
        interactiveShellInit = ''
            if status is-interactive
            and not set -q TMUX
                exec tmux new-session 
            end

            set fish_greeting
            ${pkgs.nix-your-shell}/bin/nix-your-shell fish | source
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
        shortcut = "space";
        disableConfirmationPrompt = true; 
    };

}
