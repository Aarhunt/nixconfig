{
        programs.ssh = {
            enable = true;

            extraConfig = ''
                Host server
                Hostname 77.165.151.201
                Port 26205
                User arend
                '';
        };
}
