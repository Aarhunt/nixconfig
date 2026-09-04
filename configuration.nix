{ config, pkgs, inputs, ... }:

{
	imports =
		[ 
		./hardware-configuration.nix
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

	networking.hostName = "nixos"; # Define your hostname.
# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

	networking.wireless.enable = false;
    services.upower.enable = true;

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

# Configure keymap in X11
	services.xserver.xkb = {
		layout = "us,us";
		variant = "colemak_dh,";
		options = "caps:backspace";
	};

	services.gnome.gcr-ssh-agent.enable = false;

    nixpkgs.config.allowUnfree = true;

# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users."arend" = {
		isNormalUser = true;
		description = "arend";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [];
	};

	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];

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

	programs.ssh.startAgent = true;
    programs.niri.enable = true;

# Some programs need SUID wrappers, can be configured further or are
# started in user sessions.
# programs.mtr.enable = true;
# programs.gnupg.agent = {
#   enable = true;
#   enableSSHSupport = true;
# };

# List services that you want to enable:

# Enable the OpenSSH daemon.
# services.openssh.enable = true;

# Open ports in the firewall.
# networking.firewall.allowedTCPPorts = [ ... ];
# networking.firewall.allowedUDPPorts = [ ... ];
# Or disable the firewall altogether.
# networking.firewall.enable = false;

# This value determines the NixOS release from which the default
# settings for stateful data, like file locations and database versions
# on your system were taken. It‘s perfectly fine and recommended to leave
# this value at the release version of the first install of this system.
# Before changing this value read the documentation for this option
# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "26.05"; # Did you read the comment?

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
