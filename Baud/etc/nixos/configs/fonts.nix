{ pkgs, ... }:

{
fonts.packages = with pkgs; [
	google-fonts
	(nerdfonts.override { fonts = ["FiraCode"]; })
];
}
