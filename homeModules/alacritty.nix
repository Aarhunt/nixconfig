{pkgs, ...}:
{
    programs.alacritty = {
        enable = true;
        settings = {
            general.import = ["~/.config/alacritty/themes/noctalia.toml"];

            terminal.shell.program = "${pkgs.fish}/bin/fish";

            font = {
                normal = {
                family = "JetBrainsMono Nerd Font";
                style = "Regular";
                };
                size = 9.0;
            };

            window = {
                decorations = "None";
                padding = {x = 10; y = 10;};
                opacity = 0.8;
            };

            selection.save_to_clipboard = true;
        };
    };
}
