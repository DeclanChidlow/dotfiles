{ pkgs, ... }:

{
# Auto mount drives
services.gvfs.enable = true;
services.udisks2.enable = true;
  
# Enable CUPS for printing
services.printing.enable = true;

services.mullvad-vpn.enable = true;

# Android
programs.adb.enable = true;

services.mysql = {
  enable = true;
  package = pkgs.mariadb;
};
}
