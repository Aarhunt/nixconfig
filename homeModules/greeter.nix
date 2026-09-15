{pkgs, ...}:
{
    programs.noctalia-greeter = {
        enable = true;

        greeter-args = "";
        settings = {
            cursor = {
                theme = "Bibata-Modern-Ice";
                size = 24;
                path = "${pkgs.bibata-cursors}/share/icons";
            };
            keyboard = {
                layout = "us";
                variant = "colemak_dh,";
                options = "caps:backspace";
            };
        };
    };
}
