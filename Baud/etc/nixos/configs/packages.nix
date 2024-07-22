{ pkgs, ... }:

{
nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [
	# Shell
	zsh
	zsh-completions
	eza
	fzf
	ripgrep
	bat
	wget
	curl
	
	# Desktop Environment
	sway
	swaybg
	swayidle
	swaylock
	yambar 
	bemenu
	dunst
	xdg-desktop-portal-wlr

	# Terminal and File Management
	kitty
	vifm
	neovim
	btop

	# Utilities
	pulseaudio # Provides pactl
	brightnessctl
	qalculate-gtk
	bluetuith
	nwg-displays

	# Drive Management
	usbutils
	udiskie
	udisks
	
	# Clipboard Management
	wl-clipboard
	cliphist
	
	# Theming
	adw-gtk3
	hicolor-icon-theme
	adwaita-icon-theme
	
	# Browsers
	firefox-bin # General use
	firefox-devedition-bin # Gecko
	chromium # Blink
	epiphany # Webkit
	
	# Security and Privacy
	tor-browser
	mullvad-vpn

	# Communication and Social
	signal-desktop
	telegram-desktop
	nicotine-plus

	# Development

		# Version Control
		git
		gh

		# Languages and Runtimes
		python3
		nodejs
		bun
		php
		php83Packages.composer
		rustup
		lua
		gcc

		# Development Tools
		docker
		cmake
		wp-cli
		mariadb

		# Language Servers and Linters
		tree-sitter
		vscode-langservers-extracted
		bash-language-server
		emmet-language-server
		yaml-language-server
		prettierd
		taplo
		phpactor
		typescript
		typescript-language-server
		ruff
		rust-analyzer
		lua-language-server
		tailwindcss-language-server

		# Development Libraries
		luajitPackages.luarocks-nix

	# Multimedia
	playerctl
	mpd
	mpc-cli
	ncmpcpp
	mpv
	pavucontrol
	imv
	ffmpeg
	opusTools
	
	# Document and Office
	calibre
	libreoffice-fresh
	hunspell
	hunspellDicts.en_AU
	hyphen
	mythes
	languagetool


	# Graphics and 3D
	blender
	prusa-slicer
	inkscape

	# Business
	gnucash
	
	# Screen Capture
	grim
	slurp
	satty
	kooha

	# Archive Management
	unar
	zip
	unzip
	rar
	unrar

	# Virtualisation
	virt-manager
	virtiofsd

	# Gaming
	gamemode
	steam
	prismlauncher
	heroic
	minetest

		# Emulation
		ryujinx # Switch
		melonDS # DS
    	dolphin-emu # Wii and GameCube
    	pcsx2 # PlayStation 2
		xemu # Xbox
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
