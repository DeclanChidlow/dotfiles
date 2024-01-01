{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "bira";
      plugins = [ "gh" ];
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
  };
  hardware.opengl.enable = true;

  programs.steam = {
    enable = true;
  };
}
