{
    description = "Python development shell for work- and research-related stuff.";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };

    outputs = {
        self,
       nixpkgs,
        ...
    } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    pythonEnv = pkgs.python314.withPackages (ps: with ps; [
            rpyc
            redis
    ]);
    in {
        devShells.${system}.default = pkgs.mkShell {
            buildInputs = [pythonEnv];
            shellHook = ''
            export PYRIGHT_EXTRA_PATHS="${pythonEnv}/${pkgs.python314.sitePackages}"
            '';
        };
    };
}
