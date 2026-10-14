{lib, pkgs, ...}:
let 
    enabledOnly = set: lib.attrNames (lib.filterAttrs (_: enabled: enabled) set);

    mkSettings = obsidian: {
        app              = obsidian.config.app;
        appearance       = obsidian.config.appearance;
        hotkeys          = obsidian.config.hotkeys;
        corePlugins      = enabledOnly obsidian.config.core-plugins;

        communityPlugins = lib.mapAttrsToList (id: plugin: {
            pkg    = pkgs.obsidianPlugins.${id};
          enable   = true;
          settings = plugin.settings;
        }) (lib.filterAttrs (id: _: pkgs.obsidianPlugins ? ${id}) obsidian.plugins);
    };

    obsidian = import ../configs/obsidian.nix;
    dnd = import ../configs/dnd.nix;
in
{
    programs.obsidian = {
        enable = true;

        vaults = {
            main-vault = {
                enable = true;
                target = "Documents/Obsidian";
                settings = mkSettings obsidian;
            };

            dnd-vault = {
                enable = true;
                target = "Documents/DND";
                settings = mkSettings dnd;
            };
        };
    };
}
