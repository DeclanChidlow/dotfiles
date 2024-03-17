# Move to unstable
#	nix-channel --add https://nixos.org/channels/nixos-unstable nixos

# Add home-manager
#	nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

# Then `nix-channel --update`

{ config, lib, pkgs, ... }:

{
imports =
	[
		<home-manager/nixos>
		./hardware-configuration.nix
		./configs/bootloader.nix
		./configs/connectivity.nix
		./configs/fonts.nix
		./configs/garbage.nix
		./configs/locale.nix
		./configs/packages.nix
		./configs/perprogram.nix
		./configs/power.nix
		./configs/qt.nix
		./configs/services.nix
		./configs/sound.nix
		./configs/virtualisation.nix
	];

users.users.vale = {
	isNormalUser = true;
	extraGroups = [
		"ftp"
		"games"
		"http"
		"rfkill"
		"uucp"
		"wheel"
		"networkmanager"
		"libvirtd"
		"adbusers"
	];
};

home-manager.users.vale = {
	home.stateVersion = "23.11";
};

system.stateVersion = "23.11";
}
