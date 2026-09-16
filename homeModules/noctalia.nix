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

            plugins = {
                enabled = [
                    "noctalia/bitwarden"
                ];
            };

            plugin_settings = {
                "noctalia/bitwarden" = {
                    gen_passphrase_capitalize = true;
                    gen_passphrase_include_number = true;
                    gen_passphrase_words = 3;
                    server_url = "https://vault.aroijakkers.nl";
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
        ".config/noctalia/beeper.css".text = ''
/* ==========================================================================
   BEEPER — MATUGEN
   ========================================================================== */

:root {
    /* ----------------------------------------------------------------------
       Layout
       ---------------------------------------------------------------------- */

    --font-family: system-ui, -apple-system, BlinkMacSystemFont,
        "Segoe UI", "Helvetica Neue", sans-serif;

    --header-height: 48px;
    --filters-pane-width: 220px;
    --min-sidebar-width: 280px;
    --max-sidebar-width: 800px;
    --threads-list-item-height: 54px;

    --pinned-thread-base-size: 64px;
    --pinned-thread-group-img-size:
        calc(var(--pinned-thread-base-size) / 1.5);
    --pinned-thread-height:
        calc(var(--pinned-thread-base-size) +
        (var(--pinned-thread-base-size) / 1.4));
    --pinned-thread-width:
        calc(var(--pinned-thread-base-size) +
        (var(--pinned-thread-base-size) / 2.5));


    /* ----------------------------------------------------------------------
       Matugen palette
       ---------------------------------------------------------------------- */

    --surface:
        {{colors.surface.default.hex}};

    --surface-lowest:
        {{colors.surface_container_lowest.default.hex}};

    --surface-low:
        {{colors.surface_container_low.default.hex}};

    --surface-container:
        {{colors.surface_container.default.hex}};

    --surface-high:
        {{colors.surface_container_high.default.hex}};

    --surface-highest:
        {{colors.surface_container_highest.default.hex}};

    --text:
        {{colors.on_surface.default.hex}};

    --text-secondary:
        {{colors.on_surface_variant.default.hex}};

    --outline:
        {{colors.outline.default.hex}};

    --outline-variant:
        {{colors.outline_variant.default.hex}};

    --primary:
        {{colors.primary.default.hex}};

    --primary-container:
        {{colors.primary_container.default.hex}};

    --on-primary:
        {{colors.on_primary.default.hex}};

    --on-primary-container:
        {{colors.on_primary_container.default.hex}};

    --secondary:
        {{colors.secondary.default.hex}};

    --tertiary:
        {{colors.tertiary.default.hex}};

    --error:
        {{colors.error.default.hex}};

    --on-error:
        {{colors.on_error.default.hex}};


    /* ----------------------------------------------------------------------
       Beeper core
       ---------------------------------------------------------------------- */

    --color-bg:
        var(--surface);

    --color-fg:
        var(--text);

    --color-primary:
        var(--primary);


    /* ----------------------------------------------------------------------
       Beeper base palette
       ---------------------------------------------------------------------- */

    --color-base-black:
        var(--text);

    --color-base-white:
        var(--surface);

    --color-base-gray-20:
        var(--surface-low);

    --color-base-gray-30:
        var(--surface-container);

    --color-base-gray-40:
        var(--surface-high);

    --color-base-gray-50:
        var(--surface-highest);

    --color-base-gray-60:
        var(--primary-container);

    --color-base-gray-70:
        var(--secondary);

    --color-base-gray-80:
        var(--outline-variant);

    --color-base-gray-100:
        var(--outline);

    --color-base-gray-110:
        var(--text-secondary);

    --color-base-gray-120:
        var(--text);


    /* ----------------------------------------------------------------------
       Application
       ---------------------------------------------------------------------- */

    --color-background-app:
        var(--surface);

    --color-background-app-weak:
        var(--surface-low);

    --color-background-elevated:
        var(--surface-container);

    --color-background-elevated-hover:
        var(--surface-high);

    --color-background-grouped:
        var(--surface-low);

    --color-background-grouped-weak:
        var(--surface-lowest);

    --color-background-object:
        var(--surface-container);


    /* ----------------------------------------------------------------------
       Sidebar
       ---------------------------------------------------------------------- */

    --color-background-sidebar:
        var(--surface-low);

    --color-background-sidebar-opaque:
        var(--surface-container);

    --color-background-sidebar-thread-focus:
        var(--surface-container);

    --color-background-sidebar-thread-selected:
        var(--primary-container);

    --color-background-sidebar-thread-selected-unfocused:
        var(--surface-high);


    /* ----------------------------------------------------------------------
       Messages
       ---------------------------------------------------------------------- */

    --color-background-message-active:
        var(--surface-low);

    --color-background-message-bubble-received:
        var(--surface-high);

    --color-background-message-bubble-sent:
        var(--primary-container);

    --color-background-message-bubble-linked:
        var(--surface-container);


    /* ----------------------------------------------------------------------
       Selection
       ---------------------------------------------------------------------- */

    --color-background-selected-primary:
        var(--primary-container);

    --color-background-selected-secondary:
        var(--surface-high);


    /* ----------------------------------------------------------------------
       Inputs
       ---------------------------------------------------------------------- */

    --color-background-input:
        var(--surface-high);

    --color-background-kbd:
        var(--surface-highest);


    /* ----------------------------------------------------------------------
       Text
       ---------------------------------------------------------------------- */

    --color-text-neutrals:
        var(--text);

    --color-text-neutrals-subtle:
        var(--text-secondary);

    --color-text-neutrals-weak:
        var(--text-secondary);

    --color-text-on-accent:
        var(--on-primary-container);

    --color-text-on-accent-weak:
        var(--on-primary-container);

    --color-text-translucent:
        var(--text);

    --color-text-translucent-subtle:
        var(--text-secondary);

    --color-text-translucent-weak:
        var(--text-secondary);


    /* ----------------------------------------------------------------------
       Icons
       ---------------------------------------------------------------------- */

    --color-icon-neutrals:
        var(--text-secondary);

    --color-icon-neutrals-strong:
        var(--text);

    --color-icon-neutrals-subtle:
        var(--outline);

    --color-icon-neutrals-weak:
        var(--outline-variant);

    --color-icon-on-accent:
        var(--on-primary-container);

    --color-icon-on-accent-strong:
        var(--on-primary-container);

    --color-icon-on-accent-weak:
        var(--on-primary-container);


    /* ----------------------------------------------------------------------
       Menus / headers
       ---------------------------------------------------------------------- */

    --color-background-menu:
        var(--surface-high);

    --color-background-menu-opaque:
        var(--surface-high);

    --color-background-menu-option-hover:
        var(--primary-container);

    --color-background-header-right:
        var(--surface-container);

    --color-background-header-right-opaque:
        var(--surface-container);


    /* ----------------------------------------------------------------------
       Borders
       ---------------------------------------------------------------------- */

    --color-border-neutrals:
        var(--outline-variant);

    --color-border-neutrals-strong:
        var(--outline);

    --color-border-neutrals-weak:
        var(--surface-low);

    --color-border-input:
        var(--outline-variant);

    --color-border-input-active:
        var(--outline);


    /* ----------------------------------------------------------------------
       Functional
       ---------------------------------------------------------------------- */

    --functional-red:
        var(--error);

    --functional-orange:
        var(--secondary);

    --functional-green:
        var(--tertiary);

    --functional-cyan:
        var(--primary);

    --functional-purple:
        var(--primary);

    --focus-ring:
        var(--primary);

    --link-color:
        var(--primary);

    --danger-bg:
        var(--error);

    --success-bg:
        var(--tertiary);

    --warning-bg:
        var(--secondary);


    /* ----------------------------------------------------------------------
       Misc
       ---------------------------------------------------------------------- */

    --color-background-tag:
        var(--surface-high);

    --color-overlay-modal:
        rgba(0, 0, 0, 0.35);

    --color-transparent:
        transparent;

    --left-pane-bg:
        transparent;

    --right-pane-bg:
        var(--surface);

    --error-color:
        var(--error);

    --warning-color:
        var(--secondary);

    --snoozed-indicator-bg:
        var(--secondary);

    --error-indicator-bg:
        var(--error);

    --message-snoozed-border:
        var(--secondary);

    --message-errored-beacon:
        var(--error);

    --sms-sent-bg:
        var(--tertiary);

    --compose-message-accent:
        var(--primary);

    --audio-bar-button:
        var(--primary);

    --audio-bar-preview-progress:
        var(--text);

    --audio-bar-bg:
        var(--surface-container);

    --audio-bar-border:
        var(--outline-variant);

    --prefs-well:
        var(--surface-low);

    --mark-bg:
        var(--primary-container);

    --skeleton-bg:
        url("../../../public/img/skeleton.svg");
}


/* ==========================================================================
   DARK MODE
   ========================================================================== */

@media (prefers-color-scheme: dark) {
    :root {
        /*
         * Matugen supplies the palette.
         * No duplicate Beeper mappings are needed here because the
         * Matugen-generated values are already theme-dependent.
         */
        --color-surface:
            {{colors.surface.default.hex}};
    }
}


/* ==========================================================================
   TRANSPARENCY
   ========================================================================== */

.no-transparency,
.reduce-transparency {
    --left-pane-bg:
        var(--color-background-sidebar-opaque);

    --color-background-header-right:
        var(--color-background-header-right-opaque);

    --color-background-menu:
        var(--color-background-menu-opaque);
}
        '';
            ".config/noctalia/templates.toml".text = ''
            [theme.templates.user.neovim-nvchad]
            input_path = '~/.config/noctalia/neovim-nvchad.lua'
                output_path = '~/.local/share/nvim/lazy/base46/lua/base46/themes/matugen.lua'
                post_hook = 'nvr --remote-send "<Cmd>lua require(\"base46\").load_all_highlights()<CR>"'


            [theme.templates.user.beeper]
            input_path = "~/.config/noctalia/beeper.css"
            output_path = "~/.config/BeeperTexts/custom.css"

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
