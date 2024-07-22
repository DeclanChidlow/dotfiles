{ pkgs, ... }:

{
services.fwupd.enable = true;

# Auto mount drives
services.gvfs.enable = true;
services.udisks2.enable = true;

# Enable Fingerprint
# services.fprintd.enable = true;

services.mullvad-vpn.enable = true;

services.mysql = {
  enable = true;
  package = pkgs.mariadb;
};
}
