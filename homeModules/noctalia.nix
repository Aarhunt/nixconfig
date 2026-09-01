{ 
    programs.noctalia = {
        enable = true;

        settings = {
            bar.default = {
                background_opacity = 0.32999999262392521;
                end = [
                    "media"
                        "control-center"
                        "tray"
                        "notifications"
                        "clipboard"
                        "network"
                        "bluetooth"
                        "volume"
                        "brightness"
                        "battery"
                        "session"
                ];
                reserve_space = false;
                smart_auto_hide = true;
            };

            desktop_widgets = {
                schema_version = 2;
                widget_order = [ "desktop-widget-0000000000000001" ];

                grid = {
                    cell_size = 16;
                    major_interval = 4;
                    visible = true;
                };

                widget."desktop-widget-0000000000000001" = {
                    box_height = 288.0;
                    box_width = 320.0;
                    cx = 768.0;
                    cy = 432.0;
                    output = "eDP-1";
                    placement_height = 864.0;
                    placement_width = 1536.0;
                    rotation = 0.0;
                    type = "clock";

                    settings = {
                        background = false;
                        clock_style = "analog";
                        color = "primary";
                    };
                };
            };

            location.address = "Eindhoven";

            lockscreen.enabled = true;

            lockscreen_widgets = {
                enabled = true;
                schema_version = 2;
                widget_order = [ "lockscreen-login-box@eDP-1" ];

                grid = {
                    cell_size = 16;
                    major_interval = 4;
                    visible = true;
                };

                widget."lockscreen-login-box@eDP-1" = {
                    box_height = 196.0;
                    box_width = 810.0;
                    cx = 768.0;
                    cy = 682.0;
                    output = "eDP-1";
                    placement_height = 864.0;
                    placement_width = 1536.0;
                    rotation = 0.0;
                    type = "login_box";

                    settings = {
                        background_color = "surface_variant";
                        background_opacity = 0.88;
                        background_radius = 12.0;
                        center_password_text = false;
                        input_opacity = 1.0;
                        input_radius = 6.0;
                        layout = "regular";
                        show_caps_lock = true;
                        show_keyboard_layout = true;
                        show_login_button = true;
                        show_media = true;
                        show_session_buttons = true;
                        show_unlock_hint = true;
                        show_weather = true;
                    };
                };
            };

            shell = {
                font_family = "DejaVu Sans";
                niri_overview_type_to_launch_enabled = true;
                password_style = "random";
            };

            theme = {
                builtin = "Gruvbox";
                community_palette = "Oxocarbon";
                mode = "dark";
                source = "wallpaper";
                wallpaper_scheme = "m3-tonal-spot";

                templates = {
                    builtin_ids = [
                        "alacritty"
                            "btop"
                            "cava"
                            "niri"
                            "starship"
                    ];
                    community_ids = [
                        "zen-browser"
                            "neovim"
                            "obsidian"
                            "yazi"
                    ];
                };
            };

            wallpaper = {
                directory = "/home/arend/Pictures/wallpapers";
                enabled = true;

                default.path = "/home/arend/Pictures/wallpapers/wallpaper-2.jpg";
                last.path = "/home/arend/Pictures/wallpapers/wallpaper-2.jpg";

                monitors.eDP-1.path =
                    "/home/arend/Pictures/wallpapers/wallpaper-2.jpg";
            };

            widget = {
                bluetooth.enabled = false;
                clipboard.enabled = false;

                clock.actions.left = "panel-toggle control-center home";

                control-center.enabled = false;
                network.enabled = false;
                notifications.enabled = false;
                tray.enabled = false;
            };
        };

    };
    home.file = {
        ".config/noctalia/templates.toml".text = ''
            [theme.templates.user.neovim-nvchad]
            input_path = '~/.config/noctalia/neovim-nvchad.lua'
                output_path = '~/.local/share/nvim/lazy/base46/lua/base46/themes/matugen.lua'
                post_hook = 'nvr --remote-send "<Cmd>lua require(\"base46\").load_all_highlights()<CR>"'

                '';

        ".config/noctalia/neovim-nvchad.lua".text = ''

            local M = {}

        M.base_30 = {
            white = "{{colors.on_surface.default.hex}}",
            darker_black = "{{colors.surface_container_lowest.default.hex}}",
            black = "{{colors.surface.default.hex}}",
            black2 = "{{colors.surface_container_low.default.hex}}",
            one_bg = "{{colors.surface_container.default.hex}}",
            one_bg2 = "{{colors.surface_container_high.default.hex}}",
            one_bg3 = "{{colors.surface_container_highest.default.hex}}",

            grey = "{{colors.outline.default.hex}}",
            grey_fg = "{{colors.outline_variant.default.hex}}",
            grey_fg2 = "{{colors.outline.default.hex}}",
            light_grey = "{{colors.outline.default.hex}}",

            red = "{{colors.error.default.hex}}",
            baby_pink = "{{colors.error_container.default.hex}}",
            pink = "{{colors.tertiary.default.hex}}",

            line = "{{colors.outline_variant.default.hex}}",

            green = "{{colors.primary.default.hex}}",
            vibrant_green = "{{colors.primary_fixed.default.hex}}",

            nord_blue = "{{colors.secondary.default.hex}}",
            blue = "{{colors.primary.default.hex}}",

            yellow = "{{colors.tertiary.default.hex}}",
            sun = "{{colors.tertiary_fixed.default.hex}}",

            purple = "{{colors.tertiary.default.hex}}",
            dark_purple = "{{colors.tertiary_container.default.hex}}",

            teal = "{{colors.secondary.default.hex}}",
            orange = "{{colors.tertiary.default.hex}}",
            cyan = "{{colors.secondary.default.hex}}",

            statusline_bg = "{{colors.surface_container_low.default.hex}}",
            lightbg = "{{colors.surface_container.default.hex}}",
            lightbg2 = "{{colors.surface_container_high.default.hex}}",

            pmenu_bg = "{{colors.primary.default.hex}}",
            folder_bg = "{{colors.secondary.default.hex}}",
        }

        M.base_16 = {
            base00 = "{{colors.surface.default.hex}}",
            base01 = "{{colors.surface_container_low.default.hex}}",
            base02 = "{{colors.surface_container.default.hex}}",
            base03 = "{{colors.surface_container_high.default.hex}}",
            base04 = "{{colors.outline.default.hex}}",

            base05 = "{{colors.on_surface.default.hex}}",
            base06 = "{{colors.on_surface.default.hex}}",
            base07 = "{{colors.on_surface.default.hex}}",

            base08 = "{{colors.error.default.hex}}",
            base09 = "{{colors.tertiary.default.hex}}",
            base0A = "{{colors.tertiary.default.hex}}",
            base0B = "{{colors.primary.default.hex}}",
            base0C = "{{colors.secondary.default.hex}}",
            base0D = "{{colors.primary.default.hex}}",
            base0E = "{{colors.tertiary.default.hex}}",
            base0F = "{{colors.error.default.hex}}",
        }

        M.type = "dark"

            M = require("base46").override_theme(M, "matugen")

            return M
            '';
    };

}
