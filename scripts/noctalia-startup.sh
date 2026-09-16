#!/usr/bin/env fish
nix-shell -p "python3.withPackages (ps: [ps.pip])" zlib stdenv.cc.cc.lib qrencode mpvpaper mpv socat --run '
    export LD_LIBRARY_PATH="$(nix eval --raw nixpkgs#zlib.out)/lib:$(nix eval --raw nixpkgs#stdenv.cc.cc.lib)/lib:$LD_LIBRARY_PATH"
    exec noctalia
'
