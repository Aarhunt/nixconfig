{
    programs.starship = {
        enable = true;
        enableFishIntegration = true;
        settings = builtins.fromTOML (builtins.readFile ../configs/starship.toml);
    };
}
