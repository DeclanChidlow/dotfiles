{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
     lexend
     (nerdfonts.override { fonts = ["FiraCode"]; })
  ];
}
