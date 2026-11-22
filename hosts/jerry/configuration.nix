{ config, pkgs, inputs, ... }:

{
	imports =
		[ 
		./hardware-configuration.nix
        ../../configs/tue-wpa2.nix
		];

# Bootloader.
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	boot.kernelParams = [ "pcie_aspm=off" "pci-noaer" "pcie_port_pm=off" ];
	boot.extraModprobeConfig = ''
		options rtw88_core disable_lps_deep=y
		options rtw88_pci disable_aspm=y disable_msi=y
		'';
	boot.kernelPackages = pkgs.linuxPackages_latest;



    virtualisation.docker.enable = true;

    # --- Networking --- 
	networking.hostName = "nixos"; # Define your hostname.
	networking.wireless.enable = false;
	networking.networkmanager = {
		enable = true;
		wifi.backend = "iwd";
		settings = {
			connection = {
				"wifi.powersave" = 2;
			};
		};
	};

	time.timeZone = "Europe/Amsterdam";

	i18n.defaultLocale = "en_US.UTF-8";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "nl_NL.UTF-8";
		LC_IDENTIFICATION = "nl_NL.UTF-8";
		LC_MEASUREMENT = "nl_NL.UTF-8";
		LC_MONETARY = "nl_NL.UTF-8";
		LC_NAME = "nl_NL.UTF-8";
		LC_NUMERIC = "nl_NL.UTF-8";
		LC_PAPER = "nl_NL.UTF-8";
		LC_TELEPHONE = "nl_NL.UTF-8";
		LC_TIME = "nl_NL.UTF-8";
	};

    # --- Services --- 
	services.xserver.xkb = {
		layout = "us,us";
		variant = "colemak_dh,";
		options = "caps:backspace";
	};
    services.upower.enable = true;
	services.gnome.gcr-ssh-agent.enable = false;

    nixpkgs.config.allowUnfree = true;

# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users."aarhunt" = {
		isNormalUser = true;
		description = "arend";
		extraGroups = [ "networkmanager" "wheel" "docker" ];
		packages = with pkgs; [];
	};

	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];

    sops = {
        defaultSopsFile = ../../configs/secrets/example.yaml;
        # age.sshKeyPaths = [ "/home/arend/.ssh/id_ed25519.sops" ];
        age.keyFile = "/var/lib/sops-nix/key.txt";
        age.generateKey = true;
    };

    services.avahi = {
        enable = true;
        nssmdns4 = true;
        openFirewall = true;
    };

    services.printing = {
        enable = true;
        drivers = with pkgs; [
            cups-filters
                cups-browsed
        ];
    };

    hardware.bluetooth = {
      enable = true;
      powerOnBoot = false;
    };

# List packages installed in system profile. To search, run:
# $ nix search wget
    environment.systemPackages = with pkgs; import ./packages.nix {inherit pkgs inputs;};

    environment.gnome.excludePackages = with pkgs; [
        showtime
            gcr-ssh-agent
    ];

    environment.pathsToLink = [
        "/share/applications"
            "/share/xdg-desktop-portal"
    ];

    programs.neovim = {
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
    };

    programs.thunar = {
        enable = true;
        plugins = with pkgs; [
            thunar-archive-plugin
            thunar-volman
        ];
    };
    programs.xfconf.enable = true;
    services.gvfs.enable = true;
    services.tumbler.enable = true;

    services.tlp = {
      enable = true;
      settings = {
      };
    };

    programs.ssh.startAgent = true;
    programs.niri.enable = true;
    programs.nix-ld.enable = true;
    programs.nix-ld.libraries = with pkgs; [
        stdenv.cc.cc.lib   
            zlib          
    ];

	system.stateVersion = "26.05"; # Did you read the comment?

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
