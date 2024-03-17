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
		nixrebuild = "nixos-rebuild switch --upgrade";
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
hardware.opengl.enable = true;

programs.steam = {
	enable = true;
};
}
