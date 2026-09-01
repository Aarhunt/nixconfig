{pkgs, ...}:
{
    programs.fish = {
        enable = true;

        shellAliases = {
            ll = "ls -l";
            edit = "sudo -e";
            update = "sudo nixos-rebuild switch";
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
