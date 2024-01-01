{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./configs/bootloader.nix
      ./configs/fonts.nix
      ./configs/garbage.nix
      ./configs/locale.nix
      ./configs/networking.nix
	  ./configs/perprogram.nix
      ./configs/power.nix
      ./configs/services.nix
	  ./configs/sound.nix
    ];

  nixpkgs.config.allowUnfree = true;
  
  # Packages that should always be available
  environment.systemPackages = with pkgs; [
    zsh
    zsh-completions
    oh-my-zsh
    eza
    fzf
    ugrep
    bat
    neovim
    wget
    curl
    pulseaudio # Provides pactl
    brightnessctl
  ];

  # Define a user account.
  users.users.vale = {
    isNormalUser = true;
    extraGroups = [ "ftp" "games" "http" "rfkill" "uucp" "wheel"];
    packages = with pkgs; [
      # Desktop
      sway
      swaybg
      swayidle
      swaylock
      yambar 
      bemenu
      dunst

      # Utilities
      kitty
      vifm
      firefox
      btop
      fastfetch
      prusa-slicer
      qalculate-gtk

      # Clipboard
      wl-clipboard
      cliphist

      # Manage drives
      usbutils
      udiskie
      udisks

      # Dev
      git
      gh
      # C
      cmake
      gcc
      # Web
      nodejs

      # Archives

      # Document Editing
      libreoffice
      hunspellDicts.en_AU
      hyphen
      mythes
      languagetool

      # Multimedia
      mpd
      mpc-cli
      ncmpcpp
      mpv
      pavucontrol
      playerctl
      imv
 
      # Gaming
      steam
      prismlauncher
      heroic

      # Fun
      pipes-rs
      neo
    ];
  };

  system.stateVersion = "23.11";
}
