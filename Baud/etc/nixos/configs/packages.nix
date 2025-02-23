{ pkgs, ... }:

{
nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [

	xdg-desktop-portal
	xdg-desktop-portal-wlr
	xwayland

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
	hyprlock
	yambar 
	bemenu
	dunst
	wl-gammarelay-rs

	# Terminal and File Management
	kitty
	ghostty
	vifm
	neovim
	btop
	sshs

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
	posy-cursors
	
	# Browsers
	firefox-bin
	firefox-devedition-bin # Gecko
	chromium # Blink
	epiphany # WebKit
	
	# Content Acquisition
	tor-browser
	transmission_4-gtk
	nicotine-plus

	# Communication
	signal-desktop
	thunderbird-bin

	# Development

		# Version Control
		git
		gh

		# Languages and Runtimes
		python3
		nodejs
		yarn
		pnpm
		bun
		deno
		php
		rustup
		mold
		lua
		gcc

		# Development Tools
		docker
		oxker
		cmake
		httplz
		bruno

		# Language Servers and Linters
		tree-sitter
		vscode-langservers-extracted
		bash-language-server
		emmet-language-server
		astro-language-server
		yaml-language-server
		lemminx
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
	obsidian

	# Document and Office
	calibre
	libreoffice
	hunspell
	hunspellDicts.en_AU
	hyphen
	mythes
	languagetool
	pandoc
	poppler_utils

	# Graphics and 3D
	blender
	prusa-slicer
	inkscape

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
	OVMFFull
	qemu_full

	# Gaming
	gamemode
	steam
	prismlauncher
	heroic

		# Emulation
		ryujinx-greemdev # Switch
		melonDS # DS
		dolphin-emu # Wii and GameCube
		pcsx2 # PlayStation 2
		xemu # Xbox
		rmg # N64
		# (retroarch.override {
		# 	cores = with libretro; [
		# 		beetle-vb # Virtual Boy
		# 		mgba # Gameboy
		# 		snes9x # SNES
		# 		mesen # NES
		# 		gw # Game and Watch
		# 		beetle-saturn # Saturn
		# 		blastem # Genesis
		# 		ppsspp # PlayStation Portable
		# 		swanstation # PlayStation 1
		# 		mame # Arcade
		# 		scummvm # Point and Click
		# 	];
		# })

	# Fun
	pipes-rs
	neo
];

fonts.packages = with pkgs; [
	google-fonts
	nerd-fonts.fira-code
];
}
