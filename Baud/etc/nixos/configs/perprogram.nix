{ pkgs, ... }:

{
security.sudo.enable = false;
security.doas = {
	enable = true;
	extraRules = [{
		users = ["vale"];
		keepEnv = true;
		persist = true;
	}];
};

programs.zsh = {
	enable = true;
	shellAliases = {
		nixrebuild = "doas nixos-rebuild switch";
		nixrebuildup = "doas nixos-rebuild switch --upgrade";
		nixgarbage = "doas nix-collect-garbage -d";
	};
};
users.defaultUserShell = pkgs.zsh;

programs.neovim = {
	enable = true;
	defaultEditor = true;
	viAlias = true;
	vimAlias = true;
};

programs.sway = {
	enable = true;
	wrapperFeatures.gtk = true;
	extraSessionCommands = ''
      export SDL_VIDEODRIVER=wayland
      export QT_QPA_PLATFORM=wayland
      export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
    '';
};
hardware.graphics.enable = true;

programs.steam = {
	enable = true;
};

virtualisation.docker.enable = true;

# Run Electron apps with Wayland
environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
