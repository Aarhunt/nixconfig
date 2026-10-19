{ pkgs, inputs,... }:
with pkgs; [
    git
    gnumake
    btop
    libreoffice-qt
    unzip
    bitwarden-desktop
    musescore
    inputs.spotifast.packages."${pkgs.stdenv.hostPlatform.system}".default
]
