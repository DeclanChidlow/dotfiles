{ pkgs, ... }:

{
# Allow unfree software
nixpkgs.config.allowUnfree = true;
  
# Packages that should always be available
environment.systemPackages = with pkgs; [

	# Shell
	zsh
	zsh-completions
	eza
	fzf

	# Utilities
	ugrep
	bat
	neovim
	wget
	curl
	pulseaudio # Provides pactl
	brightnessctl

	# Desktop
	sway
	swaybg
	swayidle
	swaylock
	yambar 
	bemenu
	dunst

	# Screenshots
	grim
	slurp
	satty

	# Utilities
	kitty
	vifm
	btop
	fastfetch
	prusa-slicer
	qalculate-gtk
	calibre
	bluetuith
	nwg-displays

	# Browsers
	firefox-bin # General use
	firefox-devedition-bin # Gecko
	ungoogled-chromium # Blink
	epiphany # Webkit

	# Theming
	gradience
	adw-gtk3
	hicolor-icon-theme
	gnome.adwaita-icon-theme

	# Content Acquisition
	tor-browser
	mullvad-vpn
	transmission_4-gtk
	nicotine-plus

	# Clipboard
	wl-clipboard
	cliphist

	# Manage drives
	usbutils
	udiskie
	udisks

	# Development
		# Git
		git
		gh

		# Server
		httplz

		# CSS
		sass

		# PHP
		php
		php83Packages.composer

		# JavaScript
		nodejs
		nodePackages.pnpm
		
		# Wordpress
		wp-cli

		# Database
		mariadb

		# Python
		python3

		# Rust
		rustup

		# C
		cmake
		gcc

		# Game
		godot_4

		# Android
		android-studio
		android-tools
		watchman

		# Java
		adoptopenjdk-bin
		gradle

	# Archives
	unar
	zip
	unzip
	rar
	unrar
	p7zip

	# Document Editing
	libreoffice-fresh
	hunspell
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
	ffmpeg
	opusTools

	# Virtualisation
	virt-manager

	# Gaming
	gamemode
	steam
	prismlauncher
	heroic
	sidequest

	# Emulation
	ryujinx # Switch
	melonDS # DS
    dolphin-emu # Wii and GameCube
    pcsx2 # PlayStation 2
	xemu # Xbox
	flycast # Dreamcast
	rmg # N64
	(retroarch.override {
    	cores = with libretro; [
			beetle-vb # Virtual Boy
			mgba # Gameboy
			snes9x # SNES
			mesen # NES
			gw # Game and Watch
			beetle-saturn # Saturn
			blastem # Genesis
			ppsspp # PlayStation Portable
			swanstation # PlayStation 1
			mame # Arcade
			scummvm # Point and Click
		];
	})

	# Fun
	pipes-rs
	neo
];
}
